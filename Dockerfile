FROM mcr.microsoft.com/dotnet/aspnet:5.0
RUN mkdir -p /var/www/nopCommerce450 && cd /var/www/nopCommerce450 && apt update && apt install wget -y && apt install unzip 
RUN cd /var/www/nopCommerce450 && wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.50.2/nopCommerce_4.50.2_NoSource_linux_x64.zip && unzip nopCommerce_4.50.2_NoSource_linux_x64.zip
EXPOSE 80 
CMD ["/usr/bin/dotnet", "/var/www/nopCommerce450/Nop.Web.dll"]
