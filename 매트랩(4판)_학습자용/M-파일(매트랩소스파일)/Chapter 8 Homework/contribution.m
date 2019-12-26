function output = contribution(salary, percent)
if salary<=30000
    my_share=salary*0.1;
    company_share = salary*0.1;
    output = my_share + company_share;
elseif salary<=60000
    my_share=salary*0.1;
    company_share = 30000*0.1 + (salary-30000)*0.05;
    output = my_share + company_share;
elseif salary<=100000
    my_share = 60000*0.1 + (salary-60000)*0.08;
    company_share = 0.1*30000 + 0.05*30000;
    output = my_share + company_share;
else
    my_share = 60000*0.1 + 40000*0.08;
    company_share = 0;
    output = my_share + company_share;
end