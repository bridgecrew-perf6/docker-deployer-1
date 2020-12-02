FROM alpine

COPY --from=argoproj/argocd /usr/local/bin/argocd /usr/local/bin/argocd
COPY --from=mikefarah/yq    /usr/bin/yq /usr/local/bin/yq
