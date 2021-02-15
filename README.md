# Eirinix-Annotate Extension 

Eirini is an extension for Cloud Foundry that runs applications as statefulsets/pods within Kubernetes or Openshift. This in turn allows operators to extend the behavior of their own Cloud Foundry platform with mutating webhooks - when a pod is created by Eirini, our bespoke webhook can be run to mutate the pod before it commences.

## Usage
In this project we have a mutating webhook that adds set of annotations to the each eirini pod when an app is deployed using cf push in concerned namespace.


## Installation Steps

When we deploy an example Eirini-like pod (EiriniX webhooks match to any pod with a label `source_type: APP`):

Once the cfmr installation is completed and all pods are up and running, then we can clone eirini-annotate repo (make sure we are logged into the cluster before next step):
git clone https://github.com/HCL-Cloud-Native-Labs/eirinix-annotate.git

Now 
```cd eirinix-annotate```

We can deploy our webhook into cfmr namsepace, and watch/mutate pods in cfmr-eirini:
```oc apply  -f config/deployment-eirinix-annotate.yaml```

Our mutating webhook can be found out using command:
```oc get mutatingwebhookconfigurations```

To deploy our test app into cfmr-eirini:
```oc apply -f config/apps/eirini_app.yaml```

As above, the resulting Pod will be mutated to include a all the annotations through the environment variable.

To clean up the test app:
```oc apply -f config/apps/eirini_app.yaml```

## Maintainers
The following are the custodians of this codebase:

| Name | Email |
| ---     | ---   |
| Mukul | mukul.kansal@hcl.com |
| Deepak | sharma.dee@hcl.com |

