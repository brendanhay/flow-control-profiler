REBAR=`which rebar`
BUNDLE=`which bundle`

#
# Targets
#

.PHONY: broker ruby

broker:
	$(REBAR) get-deps compile
	./broker/run

ruby:
	$(BUNDLE) install
	./ruby/run
