#include<fifo.h>
#define NVOISINS 8
for(x=0;x<N;x++){
	if(M[x] != 0)   /*test1*/
	{
		for(k=0; k<NVOISINS; k+=1) /*test2*/
		{                          /*test3*/
			y=voisin(x,k,rs,N);
			if((y!=-1)&&(!IsSet(y,EN_FIFO))&&(M[Y] == 0))
			{
				FifoPush(FIFO,y);
				Set(y,EN_FIFO);
				if(trace) printf("empile point %d (%d%d)\n",y,y%rs,y/rs);
			} /*test12*/
		}  /*test13*/
	} /*test14*/ 
} /*test15*/