# SNS HTTPS Subscription
This module is a capability to create an HTTPS subscription to the app for the connected SNS topic.

The subscription will not be automatically confirmed, and has to be done manually.
The endpoint that you define needs to implement the handling of the subscription confirmation.
"sns:ConfirmSubscription" permission will be added to the application so that it can confirm the subscription.