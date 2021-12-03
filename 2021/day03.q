i:read0`:03.txt
/1
prd 2 sv/:.5<(avg')"01"=\:i
/2
f:{$[1=count y;(y;z);(y where v=x .5<=avg"1"=v:y[;z];z+1)]}
prd 2 sv/:"1"=("01";"10"){.[f x]/[(y;0)][0;0]}\:i