FROM ubuntu;18.04 AS builder 
RUN apt update && apt install wget -y 
ADD https://github.com/nopSolutions/nopCommerce/releases/download/release-4.50.2/nopCommerce_4.50.2_NoSource_linux_x64.zip /nop/
RUN cd /nop && unzip nopCommerce_4.50.2_NoSource_linux_x64.zip 

FROM mcr.microsoft.com/dotnet/aspnet:5.0
COPY --from=builder /nop /nopbin 
WORKDIR /nopbin
EXPOSE 80 
CMD [ "dotnet", "/nopbin/Nop.Web.dll"  ]