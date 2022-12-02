#!/bin/bash
source  $(pwd)/config/config.sh

ARGUMENT_LIST=(
  "app"
  "db"
)


# read arguments
opts=$(getopt \
  --longoptions "$(printf "%s:," "${ARGUMENT_LIST[@]}")" \
  --name "$(basename "$0")" \
  --options "" \
  -- "$@"
)

eval set --$opts

function appFlag(){
echo $*
echo "FLAG"
}

function main(){
while [[ $# -gt 0 ]]; do
  case "$1" in
    --app)
    app=${OPTARG};
    appFlag $app;
    break
      ;;

    ?) # invalid argument
      echo "invalid argunment" >&2;
      exit 1;
      ;;
    : )                                    # If expected argument omitted:
      echo "Error: -${OPTARG} requires an argument."
           echo         "  :";
      ;;
    * )                                    # If unknown (any other) option:
                   echo  "*";
                   break;
      ;;
  esac
done
   shift $((OPTIND-1))
}

main $1