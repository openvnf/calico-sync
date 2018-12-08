# Calico Sync

[![License: Apache-2.0][Apache 2.0 Badge]][Apache 2.0]
[![GitHub Release Badge]][GitHub Releases]
[![Calico Releases Badge]][Calico Releases]

When [Calico] uses [Etcd Datastore] in a [Kubernetes] cluster, Etcd endpoints
specified in Calico Configmap should be in sync with Calico CNI configuration
file on each node. Calico Sync watches changes of Etcd endpoints in the
configmap and updates the CNI configuration file.

## Install

To ensure sync on each node the solution uses [DaemonSet]. Install it from the
[Manifest]:

```
$ kubectl create -f https://raw.githubusercontent.com/openvnf/calico-sync/master/manifests/calico-sync.yaml
```

## License

Copyright 2018 Travelping GmbH

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

<!-- Links -->

[Calico]: https://docs.projectcalico.org/v3.3/introduction
[Manifest]: manifests/calico-sync.yaml
[DaemonSet]: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset
[Kubernetes]: https://kubernetes.io
[Etcd Datastore]: https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/calico

<!-- Badges -->

[Apache 2.0]: https://opensource.org/licenses/Apache-2.0
[Apache 2.0 Badge]: https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg?style=flat-square
[GitHub Releases]: https://github.com/openvnf/calico-sync/releases
[GitHub Release Badge]: https://img.shields.io/github/release/openvnf/calico-sync/all.svg?style=flat-square
[Calico Releases]: https://docs.projectcalico.org/v3.3/releases
[Calico Releases Badge]: https://img.shields.io/badge/Calico-v3.1%20to%20v3.3-e6873a.svg?style=flat-square 
