00: 4247   constant 0x4247               represents 3.14
01: C000   constant 0xC000               represents -2.00 : A-B = A+(-B)
02: 0000   constant 0x0000               
03: 001F   constant 0x001F               mask for 5-bit exponent
04: 03FF   constant 0x03FF               1023
05: 0400   constant 0x0400               1024
06: 000F   constant 0x000F               15, shift amount to isolate sign
07: 000A   constant 0x000A               10, shift amount to isolate exponent
08: 0001   constant 0x0001               
09: 0800   constant 0x0800               2048, overflow threshold boundary
0A: 0000   constant 0x0000               
0B: 0000   constant 0x0000               
0C: 0000   constant 0x0000               
0D: 0000   constant 0x0000               
0E: 0000   constant 0x0000               
0F: 0000   constant 0x0000               
10: 8100   R[1] <- M[00]                
11: 8201   R[2] <- M[01]                 
12: 8303   R[3] <- M[03]                 
13: 8404   R[4] <- M[04]                 
14: 8505   R[5] <- M[05]                 
15: 8606   R[6] <- M[06]                 
16: 8707   R[7] <- M[07]                 
17: 8808   R[8] <- M[08]                 
18: 6916   R[9] <- R[1] >> R[6]          
19: 6A17   R[A] <- R[1] >> R[7]          
1A: 3AA3   R[A] <- R[A] & R[3]           
1B: 3B14   R[B] <- R[1] & R[4]           
1C: 1BB5   R[B] <- R[B] + R[5]           
1D: 6C26   R[C] <- R[2] >> R[6]          
1E: 6D27   R[D] <- R[2] >> R[7]          
1F: 3DD3   R[D] <- R[D] & R[3]           
20: 3E24   R[E] <- R[2] & R[4]           
21: 1EE5   R[E] <- R[E] + R[5]           
22: 21AD   R[1] <- R[A] - R[D]           
23: C12B   if (R[1] == 0) goto 2B        
24: D129   if (R[1] > 0) goto 29        
25: 2201   R[2] <- -R[1]                 
26: 6BB2   R[B] <- R[B] >> R[2]         
27: 1AD0   R[A] <- R[D]               
28: C02B   goto 2B                       
29: 6EE1   R[E] <- R[E] >> R[1]         
2A: 1DA0   R[D] <- R[A]                  
2B: 419C   R[1] <- R[9] ^ R[C]           
2C: C137   if (R[1] == 0) goto 37        
2D: 22BE   R[2] <- R[B] - R[E]         
2E: C235   if (R[2] == 0) goto 35       
2F: D233   if (R[2] > 0) goto 33         
30: 2FEB   R[F] <- R[E] - R[B]           
31: 19C0   R[9] <- R[C]           
32: C038   goto 38                       
33: 2FBE   R[F] <- R[B] - R[E]           
34: C038   goto 38                       
35: 1F00   R[F] <- 0000                  
36: C038   goto 38                       
37: 1FBE   R[F] <- R[B] + R[E]           
38: 8309   R[3] <- M[09]                 
39: 21F3   R[1] <- R[F] - R[3]           
3A: C13D   if (R[1] == 0) goto 3D        
3B: D13D   if (R[1] > 0) goto 3D         
3C: C040   goto 40                       
3D: 6FF8   R[F] <- R[F] >> R[8]        
3E: 1AA8   R[A] <- R[A] + R[8]           
3F: C039   goto 39                       
40: 225F   R[2] <- R[5] - R[F]           
41: C247   if (R[2] == 0) goto 47        
42: D244   if (R[2] > 0) goto 44         
43: C047   goto 47                       
44: 5FF8   R[F] <- R[F] << R[8]          
45: 2AA8   R[A] <- R[A] - R[8]           
46: C040   goto 40                       
47: 5196   R[1] <- R[9] << R[6]     
48: 52A7   R[2] <- R[A] << R[7]        
49: 33F4   R[3] <- R[F] & R[4]          
4A: 1112   R[1] <- R[1] + R[2]  
4B: 1113   R[1] <- R[1] + R[3]           
4C: 9102   M[02] <- R[1]                 
4D: 91ff   write R[1] 
4E: 0000   halt