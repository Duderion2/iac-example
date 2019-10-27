#### Voraussetzungen
Stelle sicher dass du  `awscli`, `terraform`, `jq` und `aws-iam-authenticator` installiert hast:

```
brew install awscli terraform
```
installiere `jq` (https://stedolan.github.io/jq/) 
```
brew install jq
```
installiere `aws-iam-authenticator` in deinem home path:
```
curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.11.5/2018-12-06/bin/darwin/amd64/aws-iam-authenticator
chmod +x ./aws-iam-authenticator
cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator
aws-iam-authenticator help
```
Konfiguriere deine AWS Zugangsdaten:

```
aws configure
```

#### Dokumentation
Variablen sind in .tfvars-Dateien definiert.
Jedes einzelne Skript ist für einen eigenen Bereich zuständig:
- ec2-instance.tf: Enthält eine simple EC2-Instanz und eine dazugehörige Security Group.

Zurzeit sind VPC etc. implizit, d.h. die Standard-VPC des AWS-Accounts wird verwendet.

In der stateconfig.tf wird ein S3-Bucket definiert, in dem der State gespeichert wird. 
Dieser muss vor Verwendung/Aufbau von Hand angelegt werden!