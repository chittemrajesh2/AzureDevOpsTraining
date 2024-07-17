# Kubernetes Issues and Their Resolutions

## Part 1:

### 🚨 Issue: Pods in CrashLoopBackOff State
- **Cause:** Application errors, missing configurations, or resources.
- **Resolution:** Check pod logs using `kubectl logs [pod-name]` to identify errors. Ensure configurations are correct and resources are properly allocated.

### ⚠️ Issue: Persistent Volume Claims (PVC) Stuck in Pending State
- **Cause:** Insufficient storage or misconfigured StorageClass.
- **Resolution:** Verify storage availability and ensure correct StorageClass definition. Use `kubectl describe pvc [pvc-name]` for detailed error messages.

### ❗ Issue: Service Unreachable
- **Cause:** Incorrect service configuration or network policies.
- **Resolution:** Check service and endpoint details with `kubectl describe svc [service-name]`. Ensure network policies allow traffic to the service.

### ⏳ Issue: High Pod Startup Latency
- **Cause:** Resource constraints or node performance issues.
- **Resolution:** Review resource requests and limits for pods. Consider increasing node resources or scaling the cluster.

### 🔄 Issue: Rolling Update Failures
- **Cause:** Incompatible application versions or insufficient replicas.
- **Resolution:** Ensure backward compatibility of new versions. Increase replica count to maintain availability during updates.

### 🔍 Issue: Node Not Ready
- **Cause:** Node resource exhaustion, network issues, or kubelet failure.
- **Resolution:** Check node status with `kubectl describe node [node-name]`. Investigate kubelet logs and ensure sufficient node resources.

### 🔧 Issue: Container Image Pull Errors
- **Cause:** Incorrect image name, tag, or registry authentication issues.
- **Resolution:** Verify image name, tag, and registry credentials in Kubernetes secrets.

### 📊 Issue: Metrics Server Not Working
- **Cause:** Incorrect installation or configuration.
- **Resolution:** Ensure Metrics Server deployment is correct. Check logs with `kubectl logs -n kube-system [metrics-server-pod]`.

## Part 2:

### 🚫 Issue: Failed Liveness/Readiness Probes
- **Cause:** Incorrect probe configuration or application not responding in time.
- **Resolution:** Verify probe settings and application endpoints. Ensure application responds within configured time limits.

### 🌐 Issue: DNS Resolution Issues
- **Cause:** Misconfigured CoreDNS or network issues.
- **Resolution:** Verify CoreDNS status with `kubectl get pods -n kube-system -l k8s-app=kube-dns`. Check configuration and logs.

### 🔒 Issue: Unauthorized Access Errors
- **Cause:** Incorrect RBAC settings.
- **Resolution:** Review RBAC policies. Use `kubectl auth can-i` command to verify permissions.

### 🔄 Issue: Deployment Not Updating
- **Cause:** Incorrect image tag or update strategy configuration.
- **Resolution:** Ensure correct image tag and update strategy (`RollingUpdate` for gradual updates).

### 🌟 Issue: Autoscaling Not Working
- **Cause:** Misconfigured Horizontal Pod Autoscaler (HPA) or missing metrics.
- **Resolution:** Verify HPA configuration and Metrics Server operation. Check pod resource requests and limits.

### 🚦 Issue: Pod Stuck in Terminating State
- **Cause:** Stuck finalizers or pod cleanup issues.
- **Resolution:** Check pod finalizers with `kubectl get pod [pod-name] -o yaml`. Use force deletion if necessary (`kubectl delete pod --force --grace-period=0 [pod-name]`).

### 📊 Issue: Incorrect Resource Usage Metrics
- **Cause:** Issues with metrics collection or outdated metrics.
- **Resolution:** Ensure Metrics Server and Prometheus are functioning correctly. Verify metrics collection configurations.

### 🕸️ Issue: Network Policy Blocking Traffic
- **Cause:** Incorrect network policy definitions.
- **Resolution:** Review and update network policies. Use `kubectl describe networkpolicy [policy-name]` for troubleshooting.

### 💾 Issue: Out of Disk Space on Nodes
- **Cause:** Excessive log files or large Docker images.
- **Resolution:** Clean up unused Docker images and logs. Implement log rotation policy. Monitor disk space usage and set alerts.

#
# Kubernetes Common Errors and Solutions

🔣 **Kubernetes Common Errors 🔣**

1️⃣. **ImagePullOff :-**
We face this issue when the image is not present in the registry or the provided image tag is incorrect.
Ensure correct registry URL, image name, and image tag. For private registries, create a secret with credentials and add it to the Kubernetes Deployment File for image pulling.

2️⃣. **CrashLoopBackOff :-**
This issue occurs when the process inside the container fails repeatedly, causing the POD to enter the CrashLoopBackOff state.
Possible causes include insufficient CPU or memory resources allocated to the POD. Adjust resource requests and limits in the Kubernetes Deployment YAML.

3️⃣. **OOM Kiled - Out Of Memory :-**
This error occurs when PODs attempt to use more memory than allocated limits.
To resolve, adjust the resource requests and limits appropriately.

4️⃣. **POD Status – Pending :-**
PODs may not start due to node unavailability or insufficient CPU and memory resources on nodes.
Ensure adequate resources are available on nodes and correct image details are provided.

5️⃣. **POD Status – Waiting :-**
POD is scheduled to a node but fails to run due to image or authentication issues.
Fix by ensuring correct image details and registry authentication.

6️⃣. **POD will be up and running and application is not accessible is not accessible.**
Create a correct service to fix this issue.
If the service is already created and the application is still not accessible, ensure that the application and service are deployed in the same namespace.

7️⃣. **POD Status – Evicted :-**
Resolve this issue by setting the appropriate resource requests and limits for PODs and ensuring sufficient worker node resources.

