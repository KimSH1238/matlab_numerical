%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 11 Homework Solutions
clear, clc, close all
%% Problem 11.1
% Double precision calculation
n=1:10e6;
sum(1./n)
% Single precision calculation
sum(1./single(n))
% The answers are different because of round off error in the final terms
%% Problem 11.2
% For fun, do the problem with single precision numbers
n_single=single(1:10);
results_single=sum(1./n_single)
% Redo the problem with double precision numbers
n_double=1:10;
results_double=sum(1./n_double)
% Now do the problem with integers
n_int=int8(1:10);
results_int=sum(1./n_int)
% The result must be an integer because all the terms are integers
series=1./n_int
% Note that all the terms but the first two are 0, because they round to 0.
%% Problem 11.3
%Round off error is less of a problem with double precision numbers, and
%the memory savings (and hence shorter run times) is not worth the loss in
%precision that results with single and int data types
%% Problem 11.4
doublea = 5+3i
singlea=single(5+3i)
doublea^100
singlea^100
%  The single precision number is too large to store (less memory is set
%  aside for this data type)
%% Problem 11.6
num=char('85')
%There are two elements in this array
double('8')
double('5')
% The character 8 is equivalent to the number 56
% The character 5 is equivalenet to the number 53
%% Problem 11.7
A = [1,2;3,4];
  B = [10,20;30,40];
  C = [3,6;9,12];

  ABC(:,:,1) = A;
  ABC(:,:,2) = B;
  ABC(:,:,3) = C

  Column_A1B1C1(:,:) = ABC(:,1,:)
  tmp(:,:) = ABC(2,:,:);
  Row_A2B2C2 = tmp'
  ABC(1,2,3)
%% Problem 11.8
%a
year1 = [3	6	4	10
        5	8	6	10
        4	9	5	10
        6	4	7	9
        3	5	8	10];
year2 = [2	7	3	10
        3	7	5	10
        4	5	5	10
        3	3	8	10
        3	5	2	10];
%b
testdata(:,:,1)=year1;
testdata(:,:,2)=year2;
%c
average=mean(testdata);
avg=[average(:,:,1);average(:,:,2)]
 
overall_avg=mean(avg)

question_3=[testdata(:,3,1), testdata(:,3,2)]
%% Problem 11.9
load test_results
my_results(:,:,1,1) =test1year1
my_results(:,:,1,2) =test2year1
my_results(:,:,1,3) =test3year1
my_results(:,:,2,1) =test1year2
my_results(:,:,2,2) =test2year2
my_results(:,:,2,3) =test3year2
size(my_results)
%a
my_results(1,2,1,3)
%b
my_results(1,1,:,2)
%c
my_results(2,:,2,1)
%d
my_results(:,3,:,2)
%% Problem 11.10
%a
names=char('Sally','Fred','Ralph','James ','Nancy')
% Note that a space was added to the string 'James ' to make the table in
% part d easier to read'
%b
birthdays =[6          11        1983
		    3          11        1985
 		    6          29        1986
		   12          12        1984
		   12          11        1987];
%c
birthdays=num2str(birthdays);
%d
disp([names,birthdays])

%% Problem 11.11
box_dimensions =char('box1 1  3  5','box2 2  4  6','box3 6  7  3','box4 1  4  3')
x=str2num(box_dimensions(:,6))
y=str2num(box_dimensions(:,9))
z=str2num(box_dimensions(:,12))
vol=x.*y.*z
%% Problem 11.12
load thermocouple.dat
[rows,cols]=size(thermocouple)
for k=1:cols
	    file_name=['thermocouple',num2str(k)]
	    data=thermocouple(:,k)    
	    save(file_name,'data')
	end

%% Problem 11.13
%Prompt the user to enter a string of character information.
A=input('Enter a string of information to be encoded: ')
encoded=char(A+10);
disp('Your input has been transformed!');
disp(encoded);
save encoded 'encoded'

%% Problem 11.14
disp('Would you like to decode this message?');
resonse=menu('yes or no?','YES','NO');
switch resonse
    case 1
        load encoded
        disp(char(encoded-10));
    case 2
        disp('OK - Goodbye');
end
%% Problem 11.15
A=[1 3 5;3 9 2; 11 8 2];
B=char('fred  ralph','ken   susan')
C=int8([4;6;3])
sample_cell={A,B,C}
% a
A1=sample_cell{1}
% b
sample_cell{3}(3,1)
% c
sample_cell{2}(1,1:4)
%% Problem 11.16
Al='aluminum'
Cu='copper'
Fe='iron'
Mo='molybdenum'
Co='cobalt'
elements={Al,Cu,Fe,Mo,Co}'
%% Problem 11.17
%a
symbol=char('Al','Cu','Fe','Mo','Co')
A_num=int8([13,29,26,42,27]')
AW = [26.98, 63.55, 55.85, 95.94, 58.93]'
density=[2.71,8.94, 7.87, 10.22, 8.9]'
structure=char('FCC','FCC','BCC', 'BCC','HCP')
%b
element_data={elements, symbol, A_num, AW, density, structure}
%c
name4=element_data{1}{4}
AW4=element_data{4}(4)
structure4=element_data{6}(4,:)
average_atomic_weight=mean(element_data{4})
%% Problem 11.18
for k=1:length(elements)
element_struct(k).elements=elements(k)
element_struct(k).symbol=symbol(k,:)
element_struct(k).A_num=A_num(k)
element_struct(k).AW=AW(k)
element_struct(k).density=density(k)
element_struct(k).structure=structure(k,:)
end
max([element_struct.density])
%% Problem 11.19
k=length([element_struct.AW])+1
response = menu('Would you like to enter atomic data?','yes','no');
while response==1
    disp('Remember to enter strings in single quotes')
    element_struct(k).elements=input('Enter an element name in single quotes: ');
    element_struct(k).symbol=input('Enter the symbol in single quotes ');
    element_struct(k).A_num=input('Enter the atomic number ');
    element_struct(k).AW=input('Enter the atomic weight ');
    element_struct(k).density=input('Enter the density ');
    element_struct(k).structure=input('Enter the structure in single quotes ');
    %Review the input
    element_struct(k)
    increment = menu('Was the data correct?','Yes','No');
    switch increment
        case 1
            increment =1;
        case 2
            increment = 0;
    end
    k=k+increment;
    response = menu('Would you like to enter more element data?','yes','no');
end

%% Problem 11.20
max([element_struct.AW])
