FROM alpine

COPY --from=argoproj/argocd /usr/local/bin/argocd /usr/bin/argocd
COPY --from=mikefarah/yq    /usr/bin/yq /usr/bin/yq
