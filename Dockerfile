# 1. Tomcat 9 और Java 11 का इस्तेमाल करें (जैसा आपके PC पर था)
FROM tomcat:9.0-jdk11-openjdk

# 2. Tomcat के पुराने डिफ़ॉल्ट ऐप्स को डिलीट करें
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. अपनी .war फाइल को Tomcat के ROOT में कॉपी करें ताकि ऐप डायरेक्ट ओपन हो
# (अपनी war फाइल का असली नाम 'your-app-name.war' की जगह लिखें)
COPY your-app-name.war /usr/local/tomcat/webapps/ROOT.war

# 4. Render को पोर्ट 8899 एक्सपोज़ करें
EXPOSE 8899

# 5. Tomcat सर्वर चालू करने की कमांड
CMD ["catalina.sh", "run"]