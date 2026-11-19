FROM odoo:20.0
USER root
COPY addons /mnt/extra-addons
COPY entrypoint.sh /entrypoint-render.sh
RUN sed -i 's/\r$//' /entrypoint-render.sh && chmod +x /entrypoint-render.sh && chown -R odoo /mnt/extra-addons
USER odoo
ENTRYPOINT ["/entrypoint-render.sh"]
