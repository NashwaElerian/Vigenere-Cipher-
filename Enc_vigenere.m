
function ciphertext=Enc_vigenere(plaintext,k)
%Calculate the length of plaintext to repeat the key based on it:
lenp=length(plaintext);
lenk=length(k);
%create a new vector with the same length of the plaintext:
key=zeros(1,lenp);
%Create a loop to put data of key:
i=1;
for j=1:lenp 
    if(plaintext(j)==32)
       key(1,j)=plaintext(j);
    else
       key(1,j)=k(i);
       i=i+1;
        if i>lenk
             i=1;
        end
    end
    
end


for x=1:lenp
    if (plaintext(x)==32)
        continue;
    else
        plaintext(x)=plaintext(x)-97;
        key(x)=key(x)-97;
        ciphertext(x)=upper(char(mod(plaintext(x)+key(x),26)+97));
    end
end

end

