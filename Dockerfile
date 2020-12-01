FROM alpine

RUN addgroup -g 101 -S appgroup \
    && adduser -u 101 -S appuser -G appgroup

COPY --from=argoproj/argocd /usr/local/bin/argocd /usr/local/bin/argocd
COPY --from=mikefarah/yq    /usr/bin/yq /usr/local/bin/yq

USER 101
