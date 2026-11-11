FROM quay.io/keycloak/keycloak:26.1
COPY theme.jar /opt/keycloak/Providers
ENV KC_DB=postgres
RUN /opt/keycloak/bin/kc.sh build
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", "--optimized"]