FROM eclipse-temurin:11-jre

ARG SAXON_HE_REPOSITORY=Saxonica/Saxon-HE/releases
ARG SAXON_HE_VERSION=SaxonHE11-7

RUN apt-get update && apt-get install -y unzip jq

RUN curl -L --max-redirs 5 --retry 5 --no-progress-meter --output "${SAXON_HE_VERSION}J.zip" "https://github.com/${SAXON_HE_REPOSITORY}/download/${SAXON_HE_VERSION}/${SAXON_HE_VERSION}J.zip" && \
  unzip "${SAXON_HE_VERSION}J.zip" -d "/opt/SaxonHE" && \
  mv /opt/SaxonHE/saxon-he-[0-9]*.[0-9]*.jar "/opt/SaxonHE/saxon-he.jar" && \
  rm SaxonHE[0-9]*-[0-9]*J.zip

ENTRYPOINT ["java", "-jar", "/opt/SaxonHE/saxon-he.jar"]
