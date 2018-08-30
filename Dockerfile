FROM rabbitmq:3.7.7

RUN apt-get update

RUN apt-get install -y curl unzip

RUN curl https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip > rabbitmq_delayed_message_exchange-20171201-3.7.x.zip
RUN unzip -d $RABBITMQ_HOME/plugins/ rabbitmq_delayed_message_exchange-20171201-3.7.x.zip

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_consistent_hash_exchange
