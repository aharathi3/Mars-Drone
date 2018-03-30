function [out] = anagram( str, txt)
%idea: have the first letter in the input str be first, then the second
%letter, then third, etc
lngth=length(str);

out2=[]
out=2
if lngth==1 %if the string is just length 1 then the only combo is itself
    out = {str};
elseif lngth==2 % if length is two then the possible combinations are the 
    %permutations
    out = {[str], [str(end:-1:1)]};
    out{1}=[lett comb1]
    out{2}=[lett comb2]
else 
   
    for i=1:lngth
        str(i)=[]
        lett=str(i);
        out=anagram(str);
        %this step should eventually get us to have just two values 
        comb1=out{1};
        comb2=out{2};
        
        combo1=[lett comb1];
        combo2=[lett comb2];
        comboF=[combo1 ' ' combo2]
        out=comboF

         
        end
   
    
end
        
    
    


    





end

 