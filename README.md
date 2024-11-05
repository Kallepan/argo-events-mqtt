# MQTT Argo CI/CD

## What is this?

This is a simple project to demonstrate how to use MQTT to trigger an Argo Workflow in a Kubernetes cluster using Argo Events. The scripts will install an mqtt-broker, argo-workflows, argo-events, and the necessary configurations to make it work. The workflow will be triggered by a message sent to the topic `test` in the mqtt-broker. The workflow will then log the message received and exit gracefully.

## What you need?

- Minikube
- Helm
- A MQTT Client (I use MQTTX)

## What to do?

- Run the `startup.sh` script to run all necessary preconfigurations.
- Open the mqtt client:
    1. Create a connection to localhost:1883
    2. Send a message to the topic `test` with any message
    3. A workflow container should start up in the minikube cluster in the workflows namespace.
- Check the logs of the workflow container to see the message you sent.
- Be happy I guess.
