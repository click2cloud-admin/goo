APP_ROOT = File.expand_path(File.dirname(__FILE__)+"/../../")

$: << APP_ROOT

AMQP.logging = true if ENV["DEBUG_WORKER"]
register NaniteAgent::Counter.new, "counters"
