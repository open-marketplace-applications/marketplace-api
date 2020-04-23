echo "Initializing $0"

diesel setup --database-url='postgres://postgres:canduma@'$1'/canduma'
diesel migration run

cargo run
