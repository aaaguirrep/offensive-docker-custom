FROM aaaguirrep/offensive-docker

LABEL maintainer "Arsenio Aguirre" \
      email "a_aguirre117@hotmail.com"

# WPSCAN - wpvulndb TOKEN
ENV WPSCAN_API_TOKEN ENTER_TOKEN_HERE

# aws access keys
ENV AWS_ACCESS_KEY_ID ENTER_AWS_ACCESS_KEY_HERE
ENV AWS_SECRET_ACCESS_KEY ENTER_AWS_SECRET_ACCESS_KEY_HERE

# load command history
RUN \
    sed -i '1i export HISTFILE="/path/to/.zsh_history"' /root/.zshrc && \
# Gitrob configuration
    sed -i '4i export GITROB_ACCESS_TOKEN=ENTER_TOKEN_HERE' /root/.zshrc && \
# Gitgraber configuration
    sed -i "1s/.*/GITHUB_TOKENS = ['ENTER_TOKEN_HERE', 'ENTER_TOKEN_HERE']/" /tools/gitRepositories/gitGraber/config.py && \
    sed -i 's/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx/ENTER_TOKEN_HERE/' /tools/gitRepositories/gitGraber/config.py && \
    sed -i 's/-999999999999999/ENTER_CHANNEL_NAME_HERE/' /tools/gitRepositories/gitGraber/config.py && \
    sed -i 's|TXXXXXXXX/BXXXXXXXX/XXXXXXXXXXXXXXXXXXXXXXX|TOKEN_HERE/TOKEN_HERE/TOKEN_HERE|' /tools/gitRepositories/gitGraber/config.py && \
    mkdir -p /root/.config/subfinder

# Subfinder configuration
COPY configs/subfinder/config.yaml /root/.config/subfinder/config.yaml

# Findomain configuration
ENV findomain_fb_token="ENTER_TOKEN_HERE"
ENV findomain_virustotal_token="ENTER_TOKEN_HERE"
ENV findomain_securitytrails_token="ENTER_TOKEN_HERE"
ENV findomain_spyse_token="ENTER_TOKEN_HERE"

# shortcuts
RUN \
    echo "alias vpnhtb=\"openvpn /path/to/vpnfile\"" >> /root/.zshrc && \
    echo "alias vpnthm=\"openvpn /path/to/vpnfile\"" >> /root/.zshrc
