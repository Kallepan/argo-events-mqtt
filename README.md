# MQTT Argo CI/CD

What you need?

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
