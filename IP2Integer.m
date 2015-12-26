function IPINT = IP2Integer(ip)    
    o = strsplit(ip,'.');
%    integers = uint8( str2double( regexp( ip, '\.', 'split' ) ) )
    IPINT = (str2double(o{1}) * 16777216) + (str2double(o{2}) * 65536) + (str2double(o{3}) * 256) + (str2double(o{4}));
    %n1=de2bi(str2double(o{1}));
    %n2=de2bi(str2double(o{2}));
    %n3=de2bi(str2double(o{3}));
    %n4=de2bi(str2double(o{4}));
    
end
