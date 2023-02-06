FROM selenium/standalone-chrome:109.0

USER root

RUN apt-get update && apt-get install --no-install-recommends -f -y
python3-pip
&& rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir selenium
COPY ./entry_point.sh /opt/bin/entry_point.sh
# RUN chmod a+x /opt/bin/entry_point.sh
