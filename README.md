# elastic_monit_cr

script to monitor elasticsearch indexes


## Run

update your `status_elastic.cr` file with your server's ip and exec:

```cr
crystal status_elastic.cr
```

Yout output like this:

```bash

 SIZE: Warning!
      STAUTS: open
      NAME INDICE: your index
      SIZE: 949.1kb of 949.1kb


      SIZE: God
      STAUTS: open
      NAME INDICE: your index
      SIZE: 94.4mb of 94.4mb


      SIZE: God
      STAUTS: open
      NAME INDICE: your index
      SIZE: 54.6kb of 54.6kb


      SIZE: Warning!
      STAUTS: open
      NAME INDICE: your index
      SIZE: 3.5gb of 3.5gb


      SIZE: Warning!
      STAUTS: open
      NAME INDICE: your index
      SIZE: 1.1gb of 1.1gb

Data da ultima atualização => 2020-03-23 20:11:03 +00:00
```
