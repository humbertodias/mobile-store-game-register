#!/bin/sh

# credenciais
STORE_ALIAS=android
STORE_PASS=password

KEY_STORE=doc/certificates/android/android.keystore
KEY_PASS=$STORE_PASS

APK_UNSIGNED=platforms/android/build/outputs/apk/android-release-unsigned.apk
APK_SIGNED=platforms/android/build/outputs/apk/android-release-signed.apk
DNAME="CN=Polygon, OU=Application Development, O=br.polygon4games.guarubus, L=Sao_Paulo, S=Sao_Paulo, C=BR"
# DNAME="CN=BR"

# pasta de fontes
cd src/

# add android
cordova platform add android

# clean
cordova clean android

# para threejs com webgl
# cordova plugin add cordova-plugin-crosswalk-webview

# android
cordova platform add android

# para gerar a versÃ£o release
cordova build android --release

# gerar senao existir anterior
if [ ! -f $KEY_STORE ]; then

# gerar chave
keytool -v \
-genkey \
-keystore $KEY_STORE \
-alias $STORE_ALIAS \
-keyalg RSA \
-keysize 2048 \
-validity 10000 \
-dname "$DNAME"<<EOF
$STORE_PASS
$STORE_PASS
$STORE_PASS
$STORE_PASS
EOF

fi

# assinando apk
jarsigner -verbose \
-certs \
-keystore $KEY_STORE \
-storepass $STORE_PASS \
-keypass $KEY_PASS \
$APK_UNSIGNED \
$STORE_ALIAS

# verificando assinatura no jar
jarsigner -verify \
-verbose \
-certs \
$APK_UNSIGNED

rm $APK_SIGNED

zipalign -v 4 \
$APK_UNSIGNED \
$APK_SIGNED

echo "SIGNED FILE: $APK_SIGNED"

# Hash com a assinatura
keytool -printcert -jarfile "$APK_SIGNED"