set -gx MISE_SHELL fish
set -gx __MISE_ORIG_PATH $PATH

function mise
  if test (count $argv) -eq 0
    command mise
    return
  end

  set command $argv[1]
  set -e argv[1]

  if contains -- --help $argv
    command mise "$command" $argv
    return $status
  end

  switch "$command"
  case deactivate shell sh
    # if help is requested, don't eval
    if contains -- -h $argv
      command mise "$command" $argv
    else if contains -- --help $argv
      command mise "$command" $argv
    else
      source (command mise "$command" $argv |psub)
    end
  case '*'
    command mise "$command" $argv
  end
end

function __mise_env_eval --on-event fish_prompt --description 'Update mise environment when changing directories';
    mise hook-env -s fish | source;

    if test "$mise_fish_mode" != "disable_arrow";
        function __mise_cd_hook --on-variable PWD --description 'Update mise environment when changing directories';
            if test "$mise_fish_mode" = "eval_after_arrow";
                set -g __mise_env_again 0;
            else;
                mise hook-env -s fish | source;
            end;
        end;
    end;
end;

function __mise_env_eval_2 --on-event fish_preexec --description 'Update mise environment when changing directories';
    if set -q __mise_env_again;
        set -e __mise_env_again;
        mise hook-env -s fish | source;
        echo;
    end;

    functions --erase __mise_cd_hook;
end;

__mise_env_eval
if functions -q fish_command_not_found; and not functions -q __mise_fish_command_not_found
    functions -e __mise_fish_command_not_found
    functions -c fish_command_not_found __mise_fish_command_not_found
end

function fish_command_not_found
    if string match -qrv -- '^(?:mise$|mise-)' $argv[1] &&
        mise hook-not-found -s fish -- $argv[1]
        mise hook-env -s fish | source
    else if functions -q __mise_fish_command_not_found
        __mise_fish_command_not_found $argv
    else
        __fish_default_command_not_found_handler $argv
    end
end
