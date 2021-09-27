# What it does

This will requeue a failed message on hutch once to be retried.

The ideal would be to have a max number of times for a message to be retried, but that will require additional work,
possibly some requirement on a database like redis to support that.

# Configuring

On your hutch configuration file:

```ruby
require 'hutch/acknowledgements/retry_once'


Hutch::Config.set(:error_acknowledgements, [Hutch::Acknowledgements::RetryOnce.new])
```