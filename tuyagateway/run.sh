#!/usr/bin/with-contenv bashio
set +u

export YAMAHA_IP=$(bashio::config 'token')
bashio::log.info "token configured as ${token}."

bashio::log.info "Starting Tuya Gateway addon service."
./HomeAssistantWSBridge