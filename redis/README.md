## Redis 镜像选择

Redis Docker 镜像有两种
`redis:<version>`
`redis:<version>-alpine`
镜像构建的底层操作系统不同，一个是 Debian 一个是 Alpine

- 如果说我们需要基于某个 Redis Docker 镜像构建新的镜像，选择底层操作系统为 Debian 的会更好，
在你不知道怎么选的时候，可以直接用 Debian 为操作系统的 Redis 发行版本
- 当你明确，你不需要针对 Redis Docker 镜像进行深度构建，因为 apline 使用的是 musl lib 而不是 glibc 的内库，所以在深度定制上并不那么友好，针对这种情况，可以选择 操作系统为 Alpine 的Redis 镜像版本，并且这个发行版本的镜像体积会更小
