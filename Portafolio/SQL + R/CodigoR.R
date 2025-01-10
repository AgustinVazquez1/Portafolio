R version 4.4.2 (2024-10-31 ucrt) -- "Pile of Leaves"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64

R es un software libre y viene sin GARANTIA ALGUNA.
Usted puede redistribuirlo bajo ciertas circunstancias.
Escriba 'license()' o 'licence()' para detalles de distribucion.

R es un proyecto colaborativo con muchos contribuyentes.
Escriba 'contributors()' para obtener más información y
'citation()' para saber cómo citar R o paquetes de R en publicaciones.

Escriba 'demo()' para demostraciones, 'help()' para el sistema on-line de ayuda,
o 'help.start()' para abrir el sistema de ayuda HTML con su navegador.
Escriba 'q()' para salir de R.

> 2+2
[1] 4
> data <- data.frame(Nombre = c("Juan", "Ana", "Luis"), Edad = c(25, 30, 28))
> print(data)
Nombre Edad
1   Juan   25
2    Ana   30
3   Luis   28
> 
  > install.packages("DBI")      # Para conectarse a la base de datos
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Agust/AppData/Local/R/win-library/4.4’
(as ‘lib’ is unspecified)
probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/DBI_1.2.3.zip'
Content type 'application/zip' length 941208 bytes (919 KB)
downloaded 919 KB

package ‘DBI’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Agust\AppData\Local\Temp\RtmpodfY0y\downloaded_packages
> install.packages("odbc")     # Para controladores de SQL Server
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Agust/AppData/Local/R/win-library/4.4’
(as ‘lib’ is unspecified)
also installing the dependencies ‘bit’, ‘vctrs’, ‘pkgconfig’, ‘glue’, ‘bit64’, ‘blob’, ‘cli’, ‘hms’, ‘lifecycle’, ‘Rcpp’, ‘rlang’

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/bit_4.5.0.1.zip'
Content type 'application/zip' length 1182722 bytes (1.1 MB)
downloaded 1.1 MB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/vctrs_0.6.5.zip'
Content type 'application/zip' length 1366263 bytes (1.3 MB)
downloaded 1.3 MB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/pkgconfig_2.0.3.zip'
Content type 'application/zip' length 23074 bytes (22 KB)
downloaded 22 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/glue_1.8.0.zip'
Content type 'application/zip' length 184112 bytes (179 KB)
downloaded 179 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/bit64_4.5.2.zip'
Content type 'application/zip' length 512224 bytes (500 KB)
downloaded 500 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/blob_1.2.4.zip'
Content type 'application/zip' length 50021 bytes (48 KB)
downloaded 48 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/cli_3.6.3.zip'
Content type 'application/zip' length 1367146 bytes (1.3 MB)
downloaded 1.3 MB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/hms_1.1.3.zip'
Content type 'application/zip' length 105899 bytes (103 KB)
downloaded 103 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/lifecycle_1.0.4.zip'
Content type 'application/zip' length 141484 bytes (138 KB)
downloaded 138 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/Rcpp_1.0.13-1.zip'
Content type 'application/zip' length 2895946 bytes (2.8 MB)
downloaded 2.8 MB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/rlang_1.1.4.zip'
Content type 'application/zip' length 1633235 bytes (1.6 MB)
downloaded 1.6 MB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/odbc_1.5.0.zip'
Content type 'application/zip' length 1101463 bytes (1.1 MB)
downloaded 1.1 MB

package ‘bit’ successfully unpacked and MD5 sums checked
package ‘vctrs’ successfully unpacked and MD5 sums checked
package ‘pkgconfig’ successfully unpacked and MD5 sums checked
package ‘glue’ successfully unpacked and MD5 sums checked
package ‘bit64’ successfully unpacked and MD5 sums checked
package ‘blob’ successfully unpacked and MD5 sums checked
package ‘cli’ successfully unpacked and MD5 sums checked
package ‘hms’ successfully unpacked and MD5 sums checked
package ‘lifecycle’ successfully unpacked and MD5 sums checked
package ‘Rcpp’ successfully unpacked and MD5 sums checked
package ‘rlang’ successfully unpacked and MD5 sums checked
package ‘odbc’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Agust\AppData\Local\Temp\RtmpodfY0y\downloaded_packages
> install.packages("ggplot2")  # Para crear gráficos
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Agust/AppData/Local/R/win-library/4.4’
(as ‘lib’ is unspecified)
also installing the dependencies ‘colorspace’, ‘utf8’, ‘farver’, ‘labeling’, ‘munsell’, ‘R6’, ‘RColorBrewer’, ‘viridisLite’, ‘fansi’, ‘magrittr’, ‘pillar’, ‘gtable’, ‘isoband’, ‘scales’, ‘tibble’, ‘withr’

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/colorspace_2.1-1.zip'
Content type 'application/zip' length 2668559 bytes (2.5 MB)
downloaded 2.5 MB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/utf8_1.2.4.zip'
Content type 'application/zip' length 151275 bytes (147 KB)
downloaded 147 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/farver_2.1.2.zip'
Content type 'application/zip' length 1520124 bytes (1.4 MB)
downloaded 1.4 MB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/labeling_0.4.3.zip'
Content type 'application/zip' length 63169 bytes (61 KB)
downloaded 61 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/munsell_0.5.1.zip'
Content type 'application/zip' length 245720 bytes (239 KB)
downloaded 239 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/R6_2.5.1.zip'
Content type 'application/zip' length 85120 bytes (83 KB)
downloaded 83 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/RColorBrewer_1.1-3.zip'
Content type 'application/zip' length 54471 bytes (53 KB)
downloaded 53 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/viridisLite_0.4.2.zip'
Content type 'application/zip' length 1300967 bytes (1.2 MB)
downloaded 1.2 MB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/fansi_1.0.6.zip'
Content type 'application/zip' length 324669 bytes (317 KB)
downloaded 317 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/magrittr_2.0.3.zip'
Content type 'application/zip' length 229884 bytes (224 KB)
downloaded 224 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/pillar_1.10.0.zip'
Content type 'application/zip' length 445297 bytes (434 KB)
downloaded 434 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/gtable_0.3.6.zip'
Content type 'application/zip' length 250801 bytes (244 KB)
downloaded 244 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/isoband_0.2.7.zip'
Content type 'application/zip' length 1929531 bytes (1.8 MB)
downloaded 1.8 MB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/scales_1.3.0.zip'
Content type 'application/zip' length 721275 bytes (704 KB)
downloaded 704 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/tibble_3.2.1.zip'
Content type 'application/zip' length 696474 bytes (680 KB)
downloaded 680 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/withr_3.0.2.zip'
Content type 'application/zip' length 232605 bytes (227 KB)
downloaded 227 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/ggplot2_3.5.1.zip'
Content type 'application/zip' length 5021558 bytes (4.8 MB)
downloaded 4.8 MB

package ‘colorspace’ successfully unpacked and MD5 sums checked
package ‘utf8’ successfully unpacked and MD5 sums checked
package ‘farver’ successfully unpacked and MD5 sums checked
package ‘labeling’ successfully unpacked and MD5 sums checked
package ‘munsell’ successfully unpacked and MD5 sums checked
package ‘R6’ successfully unpacked and MD5 sums checked
package ‘RColorBrewer’ successfully unpacked and MD5 sums checked
package ‘viridisLite’ successfully unpacked and MD5 sums checked
package ‘fansi’ successfully unpacked and MD5 sums checked
package ‘magrittr’ successfully unpacked and MD5 sums checked
package ‘pillar’ successfully unpacked and MD5 sums checked
package ‘gtable’ successfully unpacked and MD5 sums checked
package ‘isoband’ successfully unpacked and MD5 sums checked
package ‘scales’ successfully unpacked and MD5 sums checked
package ‘tibble’ successfully unpacked and MD5 sums checked
package ‘withr’ successfully unpacked and MD5 sums checked
package ‘ggplot2’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Agust\AppData\Local\Temp\RtmpodfY0y\downloaded_packages
> install.packages("dplyr")    # Para manipular y analizar datos
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Agust/AppData/Local/R/win-library/4.4’
(as ‘lib’ is unspecified)
also installing the dependencies ‘generics’, ‘tidyselect’

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/generics_0.1.3.zip'
Content type 'application/zip' length 84600 bytes (82 KB)
downloaded 82 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/tidyselect_1.2.1.zip'
Content type 'application/zip' length 229179 bytes (223 KB)
downloaded 223 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/dplyr_1.1.4.zip'
Content type 'application/zip' length 1588994 bytes (1.5 MB)
downloaded 1.5 MB

package ‘generics’ successfully unpacked and MD5 sums checked
package ‘tidyselect’ successfully unpacked and MD5 sums checked
package ‘dplyr’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Agust\AppData\Local\Temp\RtmpodfY0y\downloaded_packages
> install.packages("tidyr")    # Para limpiar y transformar datos
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Agust/AppData/Local/R/win-library/4.4’
(as ‘lib’ is unspecified)
also installing the dependencies ‘stringi’, ‘purrr’, ‘stringr’, ‘cpp11’

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/stringi_1.8.4.zip'
Content type 'application/zip' length 15027635 bytes (14.3 MB)
downloaded 14.3 MB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/purrr_1.0.2.zip'
Content type 'application/zip' length 513586 bytes (501 KB)
downloaded 501 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/stringr_1.5.1.zip'
Content type 'application/zip' length 324857 bytes (317 KB)
downloaded 317 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/cpp11_0.5.1.zip'
Content type 'application/zip' length 310641 bytes (303 KB)
downloaded 303 KB

probando la URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/tidyr_1.3.1.zip'
Content type 'application/zip' length 1273254 bytes (1.2 MB)
downloaded 1.2 MB

package ‘stringi’ successfully unpacked and MD5 sums checked
package ‘purrr’ successfully unpacked and MD5 sums checked
package ‘stringr’ successfully unpacked and MD5 sums checked
package ‘cpp11’ successfully unpacked and MD5 sums checked
package ‘tidyr’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Agust\AppData\Local\Temp\RtmpodfY0y\downloaded_packages
> 
  > library(DBI)
> library(odbc)
> library(ggplot2)
> library(dplyr)

Adjuntando el paquete: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

> library(tidyr)
> 
  > # Reemplaza los valores con los datos de tu servidor SQL
  > conn <- dbConnect(odbc::odbc(),
                      +                   Driver = "SQL Server",
                      +                   Server = "NotebookAgus\AGUSDEV",
                      Error: '\A' is an unrecognized escape in character string (<input>:3:42)
                      > conn <- dbConnect(odbc::odbc(),
                                          +                   Driver = "SQL Server",
                                          +                   Server = "NotebookAgus\\AGUSDEV",
                                          +                   Database = "Walmart",
                                          +                   Trusted_Connection = "Yes")
                      > 
                        > # Resumen estadístico general
                        > summary(walmart_data)
                      Error: objeto 'walmart_data' no encontrado
                      > # Resumen estadístico general
                        > summary(walmart)
                      Error: objeto 'walmart' no encontrado
                      > # Cargar datos de la tabla 'Walmart' dentro de la base de datos 'Walmart'
                        > walmart_data <- dbGetQuery(conn, "SELECT * FROM Walmart")
                      > 
                        > # Mostrar las primeras filas de los datos cargados
                        > head(walmart_data)
                      Store       Date Weekly_Sales Holiday_Flag Temperature Fuel_Price      CPI Unemployment
                      1     1 2010-02-05      1643691        FALSE       42.31      2.572 211.0964        8.106
                      2     1 2010-02-12      1641958         TRUE       38.51      2.548 211.2422        8.106
                      3     1 2010-02-19      1611968        FALSE       39.93      2.514 211.2891        8.106
                      4     1 2010-02-26      1409728        FALSE       46.63      2.561 211.3196        8.106
                      5     1 2010-03-05      1554807        FALSE       46.50      2.625 211.3501        8.106
                      6     1 2010-03-12      1439542        FALSE       57.79      2.667 211.3806        8.106
                      > 
                        > # Ver un resumen estadístico de los datos
                        > summary(walmart_data)
                      Store        Date            Weekly_Sales     Holiday_Flag     Temperature    
                      Min.   : 1   Length:6435        Min.   : 209986   Mode :logical   Min.   :  5.54  
                      1st Qu.:12   Class :character   1st Qu.: 553350   FALSE:5985      1st Qu.: 47.49  
                      Median :23   Mode  :character   Median : 960746   TRUE :450       Median : 62.67  
                      Mean   :23                      Mean   :1046965                   Mean   : 60.67  
                      3rd Qu.:34                      3rd Qu.:1420159                   3rd Qu.: 74.94  
                      Max.   :45                      Max.   :3818686                   Max.   :100.14  
                      NA's   :1       
   Fuel_Price         CPI         Unemployment   
 Min.   :2.472   Min.   :126.1   Min.   : 3.879  
 1st Qu.:2.932   1st Qu.:131.7   1st Qu.: 6.891  
 Median :3.445   Median :182.6   Median : 7.874  
 Mean   :3.358   Mean   :171.6   Mean   : 7.999  
 3rd Qu.:3.734   3rd Qu.:212.7   3rd Qu.: 8.622  
 Max.   :4.468   Max.   :227.2   Max.   :14.313  
 NA's   :16                      NA's   :4       
> 
> ggplot(walmart_data, aes(x = Fuel_Price, y = Weekly_Sales)) +
+     geom_point(alpha = 0.6, color = "blue") +
+     geom_smooth(method = "lm", color = "red", se = FALSE) +
+     labs(title = "Relación entre Precio del Combustible y Ventas",
+          x = "Precio del Combustible",
+          y = "Ventas Semanales") +
+     theme_minimal()
`geom_smooth()` using formula = 'y ~ x'
Avisos:
1: Removed 16 rows containing non-finite outside the scale range (`stat_smooth()`). 
2: Removed 16 rows containing missing values or values outside the scale range (`geom_point()`). 
> 
> ggplot(walmart_data, aes(x = Temperature, y = Weekly_Sales)) +
+     geom_point(alpha = 0.5, color = "blue") +
+     geom_smooth(method = "lm", color = "red", se = FALSE) +
+     labs(title = "Relación entre Temperatura y Ventas",
+          x = "Temperatura",
+          y = "Ventas Semanales") +
+     theme_minimal()
`geom_smooth()` using formula = 'y ~ x'
Avisos:
1: Removed 1 row containing non-finite outside the scale range (`stat_smooth()`). 
2: Removed 1 row containing missing values or values outside the scale range (`geom_point()`). 
> 
> walmart_data %>%
+     group_by(Holiday_Flag) %>%
+     summarise(Ventas_Promedio = mean(Weekly_Sales, na.rm = TRUE)) %>%
+     ggplot(aes(x = as.factor(Holiday_Flag), y = Ventas_Promedio, fill = as.factor(Holiday_Flag))) +
+     geom_bar(stat = "identity") +
+     labs(title = "Impacto de los Feriados en Ventas",
+          x = "Feriado (1 = Sí, 0 = No)",
+          y = "Ventas Promedio") +
+     scale_fill_manual(values = c("red", "green")) +
+     theme_minimal()
> 
> walmart_data %>%
+     group_by(Store) %>%
+     summarise(Ventas_Promedio = mean(Weekly_Sales, na.rm = TRUE)) %>%
+     ggplot(aes(x = Store, y = Ventas_Promedio)) +
+     geom_bar(stat = "identity", fill = "skyblue") +
+     labs(title = "Ventas Promedio por Tienda",
+          x = "Tienda",
+          y = "Ventas Promedio") +
+     theme_minimal()
> 
> ggplot(walmart_data, aes(x = as.Date(Date, "%Y-%m-%d"), y = Weekly_Sales, group = Store, color = as.factor(Store))) +
+     geom_line(alpha = 0.7) +
+     labs(title = "Tendencia de Ventas por Tienda",
+          x = "Fecha",
+          y = "Ventas Semanales",
+          color = "Tienda") +
+     theme_minimal()
> 
> walmart_data %>%
+     group_by(Store) %>%
+     summarise(Ventas_Promedio = mean(Weekly_Sales, na.rm = TRUE)) %>%
+     arrange(desc(Ventas_Promedio))
# A tibble: 45 × 2
   Store Ventas_Promedio
   <int>           <dbl>
 1    20        2107677.
 2     4        2094713.
 3    14        2020978.
 4    13        2003620.
 5     2        1925751.
 6    10        1899425.
 7    27        1775216.
 8     6        1564728.
 9     1        1555264.
10    39        1450668.
# ℹ 35 more rows
# ℹ Use `print(n = ...)` to see more rows
> 
> walmart_data %>%
+     filter(Store %in% c(20, 4, 14, 13, 2)) %>%
+     group_by(Store, Holiday_Flag) %>%
+     summarise(Ventas_Promedio = mean(Weekly_Sales, na.rm = TRUE)) %>%
+     ggplot(aes(x = as.factor(Store), y = Ventas_Promedio, fill = as.factor(Holiday_Flag))) +
+     geom_bar(stat = "identity", position = "dodge") +
+     labs(title = "Impacto de los Feriados en Tiendas más Rentables",
+          x = "Tienda",
+          y = "Ventas Promedio",
+          fill = "Feriado")
`summarise()` has grouped output by 'Store'. You can override using the `.groups` argument.
> 
> walmart_data %>%
+     filter(Store %in% c(35, 36, 40)) %>%  # Ejemplo de tiendas menos rentables
+     group_by(Store, Holiday_Flag) %>%
+     summarise(Ventas_Promedio = mean(Weekly_Sales, na.rm = TRUE))
`summarise()` has grouped output by 'Store'. You can override using the `.groups` argument.
# A tibble: 6 × 3
# Groups:   Store [3]
  Store Holiday_Flag Ventas_Promedio
  <int> <lgl>                  <dbl>
1    35 FALSE                908099.
2    35 TRUE                1074348.
3    36 FALSE                373953.
4    36 TRUE                 367641.
5    40 FALSE                960827.
6    40 TRUE                1008034.
> 
> walmart_data %>%
+     filter(Store %in% c(35, 36, 40)) %>%
+     group_by(Store, Holiday_Flag) %>%
+     summarise(Ventas_Promedio = mean(Weekly_Sales, na.rm = TRUE)) %>%
+     ggplot(aes(x = as.factor(Store), y = Ventas_Promedio, fill = as.factor(Holiday_Flag))) +
+     geom_bar(stat = "identity", position = "dodge") +
+     labs(title = "Impacto de los Feriados en Tiendas Menos Rentables",
+          x = "Tienda",
+          y = "Ventas Promedio",
+          fill = "Feriado")
`summarise()` has grouped output by 'Store'. You can override using the `.groups` argument.
> 
> ggplot(walmart_data, aes(x = Unemployment, y = Weekly_Sales)) +
+     geom_point(alpha = 0.5, color = "blue") +
+     geom_smooth(method = "lm", color = "red", se = FALSE) +
+     labs(title = "Relación entre Desempleo y Ventas",
+          x = "Tasa de Desempleo",
+          y = "Ventas Semanales") +
+     theme_minimal()
`geom_smooth()` using formula = 'y ~ x'
Avisos:
1: Removed 4 rows containing non-finite outside the scale range (`stat_smooth()`). 
2: Removed 4 rows containing missing values or values outside the scale range (`geom_point()`). 
> 
> ggplot(walmart_data, aes(x = CPI, y = Weekly_Sales)) +
+     geom_point(alpha = 0.5, color = "purple") +
+     geom_smooth(method = "lm", color = "red", se = FALSE) +
+     labs(title = "Relación entre CPI y Ventas",
+          x = "CPI",
+          y = "Ventas Semanales") +
+     theme_minimal()
`geom_smooth()` using formula = 'y ~ x'
> 
> ggplot(walmart_data, aes(x = Weekly_Sales)) +
+     geom_histogram(binwidth = 500000, fill = "blue", color = "black", alpha = 0.7) +
+     labs(title = "Distribución de Ventas Semanales",
+          x = "Ventas Semanales",
+          y = "Frecuencia") +
+     theme_minimal()
> 
> walmart_data %>%
+     filter(Weekly_Sales > 2000000) %>%
+     arrange(desc(Weekly_Sales))
    Store       Date Weekly_Sales Holiday_Flag Temperature Fuel_Price      CPI Unemployment
1      14 2010-12-24      3818687        FALSE       30.59      3.141 182.5446        8.724
2      20 2010-12-24      3766688        FALSE       25.17      3.141 204.6377        7.484
3      10 2010-12-24      3749058        FALSE       57.06      3.236 126.9836        9.003
4       4 2011-12-23      3676389        FALSE       35.92      3.103 129.9845        5.143
5      13 2010-12-24      3595903        FALSE       34.90      2.846 126.9836        7.795
6      13 2011-12-23      3556766        FALSE       24.76      3.186 129.9845        6.392
7      20 2011-12-23      3555371        FALSE       40.19      3.389 212.2360        7.082
8       4 2010-12-24      3526714        FALSE       43.21      2.887 126.9836        7.127
9      10 2011-12-23      3487987        FALSE       48.36      3.541 129.9845        7.874
10      2 2010-12-24      3436008        FALSE       49.97      2.886 211.0647        8.163
11     14 2011-12-23      3369069        FALSE       42.27      3.389 188.9300        8.523
12      2 2011-12-23      3224370        FALSE       46.66      3.112 218.9995        7.441
13     27 2010-12-24      3078162        FALSE       31.34      3.309 136.5973        8.021
14      4 2011-11-25      3004702         TRUE       47.96      3.225 129.8364        5.143
15     10 2011-11-25      2950199         TRUE       60.68      3.760 129.8364        7.874
16     10 2010-11-26      2939947         TRUE       55.33      3.162 126.6693        9.003
17     14 2010-11-26      2921710         TRUE       46.15      3.039 182.7833        8.724
18     20 2011-11-25      2906233         TRUE       46.38      3.492 211.4121        7.082
19     13 2011-11-25      2864171         TRUE       38.89      3.445 129.8364        6.392
20     20 2010-12-17      2819193        FALSE       24.07      3.140 204.6321        7.484
21     10 2010-12-17      2811647        FALSE       59.15      3.125 126.8795        9.003
22     20 2010-11-26      2811634         TRUE       46.66      3.039 204.9621        7.484
23      4 2010-11-26      2789470         TRUE       48.08      2.752 126.6693        7.127
24     13 2010-12-17      2771647        FALSE       35.21      2.842 126.8795        7.795
25      4 2011-12-16      2771397        FALSE       36.44      3.149 129.8981        5.143
26     13 2010-11-26      2766400         TRUE       28.22      2.830 126.6693        7.795
27     14 2010-12-17      2762862        FALSE       30.51      3.140 182.5177        8.724
28     20 2011-12-16      2762817        FALSE       37.16      3.413 212.0685        7.082
29     13 2011-12-16      2760347        FALSE       27.85      3.282 129.8981        6.392
30     20 2010-12-10      2752122        FALSE       24.27      3.109 204.6877        7.484
31      4 2010-12-17      2740057        FALSE       46.57      2.884 126.8795        7.127
32     27 2011-12-23      2739020        FALSE       41.59      3.587 140.5288        7.906
33     23 2010-12-24      2734277        FALSE       22.96      3.150 132.7477        5.287
34      6 2010-12-24      2727575        FALSE       55.07      2.886 212.9165        7.007
35     14 2011-11-25      2685352         TRUE       48.71      3.492 188.3504        8.523
36     19 2010-12-24      2678207        FALSE       26.05      3.309 132.7477        8.067
37      2 2010-11-26      2658725         TRUE       62.98      2.735 211.4063        8.163
38      6 2011-12-23      2644633        FALSE       49.45      3.112 220.9477        6.551
39     27 2010-11-26      2627911         TRUE       46.67      3.186 136.6896        8.021
40     14 2010-02-05      2623470        FALSE       27.31      2.784 181.8712        8.992
41      2 2011-11-25      2614202         TRUE       56.36      3.236 218.1130        7.441
42      2 2010-12-17      2609167        FALSE       47.55      2.869 211.0645        8.163
43     14 2010-12-10      2600519        FALSE       30.54      3.109 182.5520        8.724
44     14 2011-12-16      2594363        FALSE       39.93      3.413 188.7979        8.523
45     23 2011-12-23      2587953        FALSE       27.80      3.413 136.5884        4.420
46     20 2012-04-06      2565260        FALSE       50.06      3.996 214.2387        7.139
47     10 2011-12-16      2555031        FALSE       50.53      3.489 129.8981        7.874
48     39 2011-12-23      2554483        FALSE       54.62      3.112 218.0542        7.716
49     20 2011-12-09      2546124        FALSE       41.64      3.415 211.8668        7.082
50      4 2011-12-09      2508955        FALSE       31.64      3.153 129.8555        5.143
51     27 2011-11-25      2504401         TRUE       47.88      3.689 140.4218        7.906
52     14 2010-04-02      2495631        FALSE       47.74      2.850 181.8658        8.899
53     39 2010-12-24      2495489        FALSE       58.86      2.886 210.1806        8.476
54     19 2011-12-23      2480160        FALSE       36.09      3.587 136.5884        7.866
55     14 2011-12-09      2470581        FALSE       46.57      3.415 188.6545        8.523
56      4 2012-04-06      2470206        FALSE       67.69      3.864 131.0376        4.308
57     20 2012-02-10      2462978         TRUE       33.47      3.640 213.1186        6.961
58     13 2011-12-09      2462779        FALSE       24.82      3.341 129.8555        6.392
59     13 2010-12-10      2461468        FALSE       36.78      2.817 126.7934        7.795
60      2 2011-12-16      2432737        FALSE       50.13      3.159 218.8218        7.441
61     10 2011-12-09      2429311        FALSE       42.58      3.644 129.8555        7.874
62      4 2012-02-17      2427640        FALSE       34.19      3.493 130.4546        4.607
63     20 2010-12-03      2416051        FALSE       35.47      3.046 204.8249        7.484
64     10 2010-12-10      2411790        FALSE       60.51      3.091 126.7934        9.003
65     20 2010-04-02      2405395        FALSE       51.00      2.850 204.0253        7.856
66     20 2010-02-05      2401396        FALSE       25.92      2.784 204.2472        8.187
67      1 2010-12-24      2387950        FALSE       52.33      2.886 211.4051        7.838
68     24 2010-12-24      2386016        FALSE       27.74      3.309 132.7477        8.275
69      2 2010-12-10      2378727        FALSE       45.50      2.843 211.1248        8.163
70     14 2012-04-06      2376022        FALSE       49.73      3.996 190.6852        8.567
71      4 2012-02-10      2374661         TRUE       33.00      3.411 130.3849        4.607
72     14 2010-05-07      2370117        FALSE       70.75      2.966 181.6468        8.899
73     14 2010-06-04      2363602        FALSE       75.93      2.847 182.2390        8.899
74     20 2012-07-06      2358055        FALSE       79.20      3.475 214.6873        7.280
75     20 2011-02-04      2351143        FALSE       28.58      3.231 205.7329        7.343
76     27 2010-12-17      2350098        FALSE       31.62      3.301 136.5293        8.021
77     39 2011-11-25      2338833         TRUE       66.36      3.236 217.1813        7.716
78     14 2010-07-02      2334789        FALSE       76.61      2.815 182.3188        8.743
79      4 2011-02-18      2316496        FALSE       48.17      3.058 127.9952        6.510
80     20 2011-04-22      2313862        FALSE       52.56      3.892 208.4779        7.287
81     20 2012-02-17      2309025        FALSE       31.11      3.695 213.2732        6.961
82     11 2010-12-24      2306265        FALSE       59.33      2.886 214.7018        7.564
83      4 2010-12-10      2302505        FALSE       42.40      2.860 126.7934        7.127
84     20 2011-12-02      2298777        FALSE       46.32      3.452 211.6394        7.082
85      2 2011-12-09      2290549        FALSE       41.76      3.158 218.6050        7.441
86     20 2011-11-04      2284107        FALSE       43.88      3.551 210.8365        7.082
87      4 2012-08-17      2283540        FALSE       81.41      3.552 130.7910        4.077
88      4 2011-11-04      2281217        FALSE       49.86      3.322 129.8052        5.143
89     14 2011-08-26      2273471        FALSE       72.55      3.704 186.5641        8.625
90     13 2012-04-06      2271615        FALSE       48.85      3.793 131.0376        5.965
91      1 2011-12-23      2270189        FALSE       47.96      3.112 219.3577        7.866
92     20 2011-11-11      2269976        FALSE       47.27      3.530 210.9810        7.082
93      6 2010-11-26      2267453         TRUE       65.79      2.735 213.2673        7.007
94     41 2011-12-23      2263723        FALSE       25.59      3.173 196.1714        6.759
95     14 2010-04-09      2258781        FALSE       65.45      2.869 181.7596        8.899
96     20 2011-02-18      2258616        FALSE       42.95      3.245 206.3695        7.343
97     14 2010-12-03      2258490        FALSE       40.93      3.046 182.6676        8.724
98     14 2011-04-22      2256462        FALSE       53.04      3.892 185.6685        8.521
99     10 2010-12-03      2251207        FALSE       51.17      3.041 126.7313        9.003
100     6 2011-11-25      2249812         TRUE       62.78      3.236 220.0417        6.551
101    14 2010-06-11      2249570        FALSE       69.71      2.809 182.4316        8.899
102    14 2010-06-18      2248646        FALSE       72.62      2.780 182.4424        8.899
103    20 2012-10-05      2246412        FALSE       60.77      3.985 215.9259        7.293
104    14 2010-06-25      2246180        FALSE       79.32      2.808 182.3806        8.899
105     4 2012-06-08      2245257        FALSE       78.11      3.433 130.8897        4.308
106     4 2011-11-18      2243947        FALSE       50.44      3.294 129.8268        5.143
107    23 2010-12-17      2238574        FALSE       23.05      3.139 132.6805        5.287
108    14 2010-03-05      2237545        FALSE       37.13      2.777 182.1202        8.992
109    14 2010-07-09      2236209        FALSE       82.45      2.793 182.2570        8.743
110     4 2012-06-15      2234191        FALSE       80.94      3.372 130.8295        4.308
111     4 2011-08-19      2232892        FALSE       82.77      3.550 129.2406        5.644
112    20 2012-06-08      2231962        FALSE       62.01      3.689 214.5527        7.139
113    14 2010-05-28      2227152        FALSE       69.27      2.899 182.0464        8.899
114     4 2012-02-24      2226662        FALSE       41.31      3.541 130.5502        4.607
115    41 2010-12-24      2225017        FALSE       29.81      2.781 191.1430        7.508
116     4 2012-07-06      2224499        FALSE       80.37      3.187 130.7196        4.077
117     4 2011-04-22      2220601        FALSE       68.80      3.781 128.9553        5.946
118    14 2010-08-06      2219814        FALSE       77.17      2.784 182.5321        8.743
119    10 2012-02-10      2218596         TRUE       55.73      3.722 130.3849        7.545
120     4 2012-03-16      2214968        FALSE       59.81      3.707 130.8262        4.607
121    13 2012-02-17      2214477        FALSE       36.57      3.119 130.4546        6.104
122    11 2011-12-23      2213519        FALSE       54.29      3.112 222.8259        7.197
123    20 2011-02-11      2211388         TRUE       25.38      3.239 206.0764        7.343
124     4 2012-10-05      2209836        FALSE       63.07      3.620 131.0757        3.879
125     4 2011-10-21      2207742        FALSE       64.79      3.361 129.7822        5.143
 [ reached 'max' / getOption("max.print") -- omitted 285 rows ]
> 
> ggplot(ventas_altas, aes(x = CPI, y = Weekly_Sales)) +
+     geom_point(alpha = 0.5, color = "purple") +
+     geom_smooth(method = "lm", color = "red", se = FALSE) +
+     labs(title = "Relación entre CPI y Ventas Altas",
+          x = "CPI",
+          y = "Ventas Semanales") +
+     theme_minimal()
Error: objeto 'ventas_altas' no encontrado
> ggplot(ventas_altas, aes(x = CPI, y = Weekly_Sales)) +
+     geom_point(alpha = 0.5, color = "purple") +
+     geom_smooth(method = "lm", color = "red", se = FALSE) +
+     labs(title = "Relación entre CPI y Ventas Altas",
+          x = "CPI",
+          y = "Ventas Semanales") +
+     theme_minimal()
Error: objeto 'ventas_altas' no encontrado
> # Filtrar semanas con ventas mayores a $3,000,000
> ventas_altas <- walmart_data %>% filter(Weekly_Sales > 3000000)
> 
> # Resumir las métricas promedio en semanas de ventas altas
> resumen_ventas_altas <- ventas_altas %>%
+     summarise(
+         Temp_Promedio = mean(Temperature, na.rm = TRUE),
+         Precio_Combustible = mean(Fuel_Price, na.rm = TRUE),
+         CPI_Promedio = mean(CPI, na.rm = TRUE),
+         Desempleo_Promedio = mean(Unemployment, na.rm = TRUE),
+         Feriados = sum(Holiday_Flag)
+     )
> 
> print(resumen_ventas_altas)
  Temp_Promedio Precio_Combustible CPI_Promedio Desempleo_Promedio Feriados
1      39.88286           3.170786      161.125             7.4225        1
> 
> # Resumir datos generales
> resumen_general <- walmart_data %>%
+     summarise(
+         Temp_Promedio = mean(Temperature, na.rm = TRUE),
+         Precio_Combustible = mean(Fuel_Price, na.rm = TRUE),
+         CPI_Promedio = mean(CPI, na.rm = TRUE),
+         Desempleo_Promedio = mean(Unemployment, na.rm = TRUE),
+         Feriados = sum(Holiday_Flag)
+     )
> 
> print(resumen_general)
  Temp_Promedio Precio_Combustible CPI_Promedio Desempleo_Promedio Feriados
1      60.67353           3.357787     171.5784           7.999151      450
> 
> ggplot(ventas_altas, aes(x = as.factor(Holiday_Flag), y = Weekly_Sales, fill = as.factor(Holiday_Flag))) +
+     geom_boxplot() +
+     labs(title = "Impacto de Feriados en Ventas Altas",
+          x = "¿Es Feriado?",
+          y = "Ventas Semanales",
+          fill = "Feriado") +
+     theme_minimal()
> 
> ggplot(ventas_altas, aes(x = Temperature, y = Weekly_Sales)) +
+     geom_point(alpha = 0.5, color = "blue") +
+     geom_smooth(method = "lm", color = "red", se = FALSE) +
+     labs(title = "Relación entre Temperatura y Ventas Altas",
+          x = "Temperatura",
+          y = "Ventas Semanales") +
+     theme_minimal()
`geom_smooth()` using formula = 'y ~ x'
> 
> ggplot(ventas_altas, aes(x = CPI, y = Weekly_Sales)) +
+     geom_point(alpha = 0.5, color = "purple") +
+     geom_smooth(method = "lm", color = "red", se = FALSE) +
+     labs(title = "Relación entre CPI y Ventas Altas",
+          x = "CPI",
+          y = "Ventas Semanales") +
+     theme_minimal()
`geom_smooth()` using formula = 'y ~ x'
> 