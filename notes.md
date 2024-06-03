# Article 1

This is **great**. Imagine how beautiful it is to write my notes _here._

To see how different **colors** look in your _terminal_, run the following command:

```bash
for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
```


