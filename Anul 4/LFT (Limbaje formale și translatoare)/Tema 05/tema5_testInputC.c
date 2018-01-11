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



REZULTATUL TREBUIE SA FIE:
<html><body><pre>
<span class='prepo'> #include &lt; fifo.h &gt; </span>
<span class='prepo'> #define NVOISINS 8        </span>
<span class='kw'> for </span>(x=0;x &lt; N;x++){
	<span class='kw'> if </span>(M[x] != 0)   <span class='comment'> /*test1*/ </span>
	{
		<span class='kw'> for </span>(k=0; k<NVOISINS; k+=1) <span class='comment'> /*test2*/ </span>
		{                          <span class='comment'> /*test3*/ </span>
			y=voisin(x,k,rs,N);
			<span class='kw'> if </span>((y!=-1) &amp;&amp; (!IsSet(y,EN_FIFO)) &amp;&amp; (M[Y] == 0))
			{
				FifoPush(FIFO,y);
				Set(y,EN_FIFO);
				<span class='kw'> if </span>(trace) printf(<span class='string'> "empile point %d (%d%d)\n" </span>,y,y%rs,y/rs);
			} /*test12*/ </span>
		}  <span class='comment'> /*test13*/ </span>
	} <span class='comment'> /*test14*/  </span>
} <span class='comment'> /*test15*/ </span>
</pre></body></html>



REGEX 
  -> /*test2*/
  \/[*][a-zA-z0-9!@#$%^&*()_+=-]*[*]\/		printf("<span class='comment'>%s</span>",yytext);
  
  -> DACA [if,for,]
  (if)+|(for)+					printf("<span class='kw'>%s</span>",yytext);

  -> "string"
  ["][a-zA-z0-9`~!@#$%^&()_+-=* ]+["]		printf("<span class='string'>%s</span>",yytext);

  -> &&		
   &					        printf("&amp;");  
