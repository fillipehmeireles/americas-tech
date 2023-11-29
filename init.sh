CONFIG_TEST_FILE=config-to-test-local.yml
ORDER_SERVICE_FOLDER=./order-service
USER_SERVICE_FOLDER=./user-service
git submodule update --init --recursive

cp $CONFIG_TEST_FILE $ORDER_SERVICE_FOLDER && 
cp $CONFIG_TEST_FILE $USER_SERVICE_FOLDER

mv $ORDER_SERVICE_FOLDER/$CONFIG_TEST_FILE config.yml && 
mv $USER_SERVICE_FOLDER/$CONFIG_TEST_FILE config.yml

docker-compose up -d