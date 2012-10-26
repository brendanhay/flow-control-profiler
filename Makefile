REBAR  := `which rebar`
BUNDLE := `which bundle`

AMQP_PORT := 5673

#
# Targets
#

.PHONY: broker ruby

broker:
	$(REBAR) get-deps compile
	AMQP_PORT=$(AMQP_PORT) ./broker/run

ruby:
	$(BUNDLE) install
	AMQP_PORT=$(AMQP_PORT) ./ruby/run
