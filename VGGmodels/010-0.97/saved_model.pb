яШ
тх
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Й
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718МЪ
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђ─*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
ђ─*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
і
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
Ѓ
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
і
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
Ѓ
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
І
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*$
shared_nameblock2_conv1/kernel
ё
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@ђ*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:ђ*
dtype0
ї
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock2_conv2/kernel
Ё
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:ђђ*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:ђ*
dtype0
ї
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock3_conv1/kernel
Ё
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:ђђ*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:ђ*
dtype0
ї
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock3_conv2/kernel
Ё
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:ђђ*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:ђ*
dtype0
ї
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock3_conv3/kernel
Ё
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:ђђ*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:ђ*
dtype0
ї
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock4_conv1/kernel
Ё
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:ђђ*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:ђ*
dtype0
ї
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock4_conv2/kernel
Ё
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:ђђ*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:ђ*
dtype0
ї
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock4_conv3/kernel
Ё
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:ђђ*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:ђ*
dtype0
ї
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock5_conv1/kernel
Ё
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:ђђ*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:ђ*
dtype0
ї
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock5_conv2/kernel
Ё
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:ђђ*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:ђ*
dtype0
ї
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock5_conv3/kernel
Ё
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:ђђ*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:ђ*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
ё
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђ─*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
ђ─*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
ё
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђ─*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
ђ─*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
уf
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*бf
valueўfBЋf Bјf
Т
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
trainable_variables
regularization_losses
		variables

	keras_api

signatures
Д
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
trainable_variables
 regularization_losses
!	variables
"	keras_api
R
#trainable_variables
$regularization_losses
%	variables
&	keras_api
R
'trainable_variables
(regularization_losses
)	variables
*	keras_api
R
+trainable_variables
,regularization_losses
-	variables
.	keras_api
h

/kernel
0bias
1trainable_variables
2regularization_losses
3	variables
4	keras_api
h
5iter

6beta_1

7beta_2
	8decay
9learning_rate/mЪ0mа/vА0vб

/0
01
 
о
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
/26
027
Г

Tlayers
Umetrics
trainable_variables
Vlayer_metrics
regularization_losses
Wlayer_regularization_losses
Xnon_trainable_variables
		variables
 
 
h

:kernel
;bias
Ytrainable_variables
Zregularization_losses
[	variables
\	keras_api
h

<kernel
=bias
]trainable_variables
^regularization_losses
_	variables
`	keras_api
R
atrainable_variables
bregularization_losses
c	variables
d	keras_api
h

>kernel
?bias
etrainable_variables
fregularization_losses
g	variables
h	keras_api
h

@kernel
Abias
itrainable_variables
jregularization_losses
k	variables
l	keras_api
R
mtrainable_variables
nregularization_losses
o	variables
p	keras_api
h

Bkernel
Cbias
qtrainable_variables
rregularization_losses
s	variables
t	keras_api
h

Dkernel
Ebias
utrainable_variables
vregularization_losses
w	variables
x	keras_api
h

Fkernel
Gbias
ytrainable_variables
zregularization_losses
{	variables
|	keras_api
S
}trainable_variables
~regularization_losses
	variables
ђ	keras_api
l

Hkernel
Ibias
Ђtrainable_variables
ѓregularization_losses
Ѓ	variables
ё	keras_api
l

Jkernel
Kbias
Ёtrainable_variables
єregularization_losses
Є	variables
ѕ	keras_api
l

Lkernel
Mbias
Ѕtrainable_variables
іregularization_losses
І	variables
ї	keras_api
V
Їtrainable_variables
јregularization_losses
Ј	variables
љ	keras_api
l

Nkernel
Obias
Љtrainable_variables
њregularization_losses
Њ	variables
ћ	keras_api
l

Pkernel
Qbias
Ћtrainable_variables
ќregularization_losses
Ќ	variables
ў	keras_api
l

Rkernel
Sbias
Ўtrainable_variables
џregularization_losses
Џ	variables
ю	keras_api
V
Юtrainable_variables
ъregularization_losses
Ъ	variables
а	keras_api
 
 
к
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
▓
Аlayers
бmetrics
trainable_variables
Бlayer_metrics
 regularization_losses
 цlayer_regularization_losses
Цnon_trainable_variables
!	variables
 
 
 
▓
дlayers
Дmetrics
еlayer_metrics
#trainable_variables
$regularization_losses
 Еlayer_regularization_losses
фnon_trainable_variables
%	variables
 
 
 
▓
Фlayers
гmetrics
Гlayer_metrics
'trainable_variables
(regularization_losses
 «layer_regularization_losses
»non_trainable_variables
)	variables
 
 
 
▓
░layers
▒metrics
▓layer_metrics
+trainable_variables
,regularization_losses
 │layer_regularization_losses
┤non_trainable_variables
-	variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01
 

/0
01
▓
хlayers
Хmetrics
иlayer_metrics
1trainable_variables
2regularization_losses
 Иlayer_regularization_losses
╣non_trainable_variables
3	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv1/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv1/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv2/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv2/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv3/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv3/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
#
0
1
2
3
4

║0
╗1
 
 
к
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
 
 

:0
;1
▓
╝layers
йmetrics
Йlayer_metrics
Ytrainable_variables
Zregularization_losses
 ┐layer_regularization_losses
└non_trainable_variables
[	variables
 
 

<0
=1
▓
┴layers
┬metrics
├layer_metrics
]trainable_variables
^regularization_losses
 ─layer_regularization_losses
┼non_trainable_variables
_	variables
 
 
 
▓
кlayers
Кmetrics
╚layer_metrics
atrainable_variables
bregularization_losses
 ╔layer_regularization_losses
╩non_trainable_variables
c	variables
 
 

>0
?1
▓
╦layers
╠metrics
═layer_metrics
etrainable_variables
fregularization_losses
 ╬layer_regularization_losses
¤non_trainable_variables
g	variables
 
 

@0
A1
▓
лlayers
Лmetrics
мlayer_metrics
itrainable_variables
jregularization_losses
 Мlayer_regularization_losses
нnon_trainable_variables
k	variables
 
 
 
▓
Нlayers
оmetrics
Оlayer_metrics
mtrainable_variables
nregularization_losses
 пlayer_regularization_losses
┘non_trainable_variables
o	variables
 
 

B0
C1
▓
┌layers
█metrics
▄layer_metrics
qtrainable_variables
rregularization_losses
 Пlayer_regularization_losses
яnon_trainable_variables
s	variables
 
 

D0
E1
▓
▀layers
Яmetrics
рlayer_metrics
utrainable_variables
vregularization_losses
 Рlayer_regularization_losses
сnon_trainable_variables
w	variables
 
 

F0
G1
▓
Сlayers
тmetrics
Тlayer_metrics
ytrainable_variables
zregularization_losses
 уlayer_regularization_losses
Уnon_trainable_variables
{	variables
 
 
 
▓
жlayers
Жmetrics
вlayer_metrics
}trainable_variables
~regularization_losses
 Вlayer_regularization_losses
ьnon_trainable_variables
	variables
 
 

H0
I1
х
Ьlayers
№metrics
­layer_metrics
Ђtrainable_variables
ѓregularization_losses
 ыlayer_regularization_losses
Ыnon_trainable_variables
Ѓ	variables
 
 

J0
K1
х
зlayers
Зmetrics
шlayer_metrics
Ёtrainable_variables
єregularization_losses
 Шlayer_regularization_losses
эnon_trainable_variables
Є	variables
 
 

L0
M1
х
Эlayers
щmetrics
Щlayer_metrics
Ѕtrainable_variables
іregularization_losses
 чlayer_regularization_losses
Чnon_trainable_variables
І	variables
 
 
 
х
§layers
■metrics
 layer_metrics
Їtrainable_variables
јregularization_losses
 ђlayer_regularization_losses
Ђnon_trainable_variables
Ј	variables
 
 

N0
O1
х
ѓlayers
Ѓmetrics
ёlayer_metrics
Љtrainable_variables
њregularization_losses
 Ёlayer_regularization_losses
єnon_trainable_variables
Њ	variables
 
 

P0
Q1
х
Єlayers
ѕmetrics
Ѕlayer_metrics
Ћtrainable_variables
ќregularization_losses
 іlayer_regularization_losses
Іnon_trainable_variables
Ќ	variables
 
 

R0
S1
х
їlayers
Їmetrics
јlayer_metrics
Ўtrainable_variables
џregularization_losses
 Јlayer_regularization_losses
љnon_trainable_variables
Џ	variables
 
 
 
х
Љlayers
њmetrics
Њlayer_metrics
Юtrainable_variables
ъregularization_losses
 ћlayer_regularization_losses
Ћnon_trainable_variables
Ъ	variables
ј
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
 
 
 
к
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

ќtotal

Ќcount
ў	variables
Ў	keras_api
I

џtotal

Џcount
ю
_fn_kwargs
Ю	variables
ъ	keras_api
 
 
 
 

:0
;1
 
 
 
 

<0
=1
 
 
 
 
 
 
 
 
 

>0
?1
 
 
 
 

@0
A1
 
 
 
 
 
 
 
 
 

B0
C1
 
 
 
 

D0
E1
 
 
 
 

F0
G1
 
 
 
 
 
 
 
 
 

H0
I1
 
 
 
 

J0
K1
 
 
 
 

L0
M1
 
 
 
 
 
 
 
 
 

N0
O1
 
 
 
 

P0
Q1
 
 
 
 

R0
S1
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ќ0
Ќ1

ў	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

џ0
Џ1

Ю	variables
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
њ
serving_default_vgg16_inputPlaceholder*1
_output_shapes
:         ­­*
dtype0*&
shape:         ­­
Ј
StatefulPartitionedCallStatefulPartitionedCallserving_default_vgg16_inputblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense/kernel
dense/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_23419
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╬
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*6
Tin/
-2+	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference__traced_save_24582
Ћ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense/kernel/vAdam/dense/bias/v*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_24715Х╩
Б
Ѓ
G__inference_block5_conv3_layer_call_and_return_conditional_losses_22165

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
У
^
B__inference_flatten_layer_call_and_return_conditional_losses_22824

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     b  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         ђ─2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         ђ─2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Њ
`
B__inference_dropout_layer_call_and_return_conditional_losses_22816

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         ђ2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         ђ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block4_conv2_layer_call_and_return_conditional_losses_22096

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block4_conv1_layer_call_and_return_conditional_losses_24327

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ѕ[
І
@__inference_vgg16_layer_call_and_return_conditional_losses_22751
input_1,
block1_conv1_22680:@ 
block1_conv1_22682:@,
block1_conv2_22685:@@ 
block1_conv2_22687:@-
block2_conv1_22691:@ђ!
block2_conv1_22693:	ђ.
block2_conv2_22696:ђђ!
block2_conv2_22698:	ђ.
block3_conv1_22702:ђђ!
block3_conv1_22704:	ђ.
block3_conv2_22707:ђђ!
block3_conv2_22709:	ђ.
block3_conv3_22712:ђђ!
block3_conv3_22714:	ђ.
block4_conv1_22718:ђђ!
block4_conv1_22720:	ђ.
block4_conv2_22723:ђђ!
block4_conv2_22725:	ђ.
block4_conv3_22728:ђђ!
block4_conv3_22730:	ђ.
block5_conv1_22734:ђђ!
block5_conv1_22736:	ђ.
block5_conv2_22739:ђђ!
block5_conv2_22741:	ђ.
block5_conv3_22744:ђђ!
block5_conv3_22746:	ђ
identityѕб$block1_conv1/StatefulPartitionedCallб$block1_conv2/StatefulPartitionedCallб$block2_conv1/StatefulPartitionedCallб$block2_conv2/StatefulPartitionedCallб$block3_conv1/StatefulPartitionedCallб$block3_conv2/StatefulPartitionedCallб$block3_conv3/StatefulPartitionedCallб$block4_conv1/StatefulPartitionedCallб$block4_conv2/StatefulPartitionedCallб$block4_conv3/StatefulPartitionedCallб$block5_conv1/StatefulPartitionedCallб$block5_conv2/StatefulPartitionedCallб$block5_conv3/StatefulPartitionedCall░
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_22680block1_conv1_22682*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ­­@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_219572&
$block1_conv1/StatefulPartitionedCallо
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_22685block1_conv2_22687*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ­­@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_219742&
$block1_conv2/StatefulPartitionedCallІ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_218852
block1_pool/PartitionedCall╠
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_22691block2_conv1_22693*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         xxђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_219922&
$block2_conv1/StatefulPartitionedCallН
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_22696block2_conv2_22698*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         xxђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_220092&
$block2_conv2/StatefulPartitionedCallї
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_218972
block2_pool/PartitionedCall╠
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_22702block3_conv1_22704*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_220272&
$block3_conv1/StatefulPartitionedCallН
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_22707block3_conv2_22709*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_220442&
$block3_conv2/StatefulPartitionedCallН
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_22712block3_conv3_22714*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_220612&
$block3_conv3/StatefulPartitionedCallї
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_219092
block3_pool/PartitionedCall╠
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_22718block4_conv1_22720*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_220792&
$block4_conv1/StatefulPartitionedCallН
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_22723block4_conv2_22725*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_220962&
$block4_conv2/StatefulPartitionedCallН
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_22728block4_conv3_22730*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_221132&
$block4_conv3/StatefulPartitionedCallї
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_219212
block4_pool/PartitionedCall╠
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_22734block5_conv1_22736*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_221312&
$block5_conv1/StatefulPartitionedCallН
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_22739block5_conv2_22741*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_221482&
$block5_conv2/StatefulPartitionedCallН
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_22744block5_conv3_22746*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_221652&
$block5_conv3/StatefulPartitionedCallї
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_219332
block5_pool/PartitionedCallЧ
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
Б
Ѓ
G__inference_block3_conv3_layer_call_and_return_conditional_losses_22061

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         <<ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         <<ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         <<ђ
 
_user_specified_nameinputs
Ы
a
B__inference_dropout_layer_call_and_return_conditional_losses_24108

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         ђ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeй
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         ђ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>2
dropout/GreaterEqual/yК
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         ђ2
dropout/GreaterEqualѕ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         ђ2
dropout/CastЃ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         ђ2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block3_conv3_layer_call_and_return_conditional_losses_24307

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         <<ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         <<ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         <<ђ
 
_user_specified_nameinputs
щ
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_24134

inputs

identity_1\
IdentityIdentityinputs*
T0*)
_output_shapes
:         ђ─2

Identityk

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:         ђ─2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђ─:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
Б
ђ
G__inference_block1_conv1_layer_call_and_return_conditional_losses_24187

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
ReluА
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ­­@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ­­: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
┴┤
я
E__inference_sequential_layer_call_and_return_conditional_losses_23530

inputsK
1vgg16_block1_conv1_conv2d_readvariableop_resource:@@
2vgg16_block1_conv1_biasadd_readvariableop_resource:@K
1vgg16_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg16_block1_conv2_biasadd_readvariableop_resource:@L
1vgg16_block2_conv1_conv2d_readvariableop_resource:@ђA
2vgg16_block2_conv1_biasadd_readvariableop_resource:	ђM
1vgg16_block2_conv2_conv2d_readvariableop_resource:ђђA
2vgg16_block2_conv2_biasadd_readvariableop_resource:	ђM
1vgg16_block3_conv1_conv2d_readvariableop_resource:ђђA
2vgg16_block3_conv1_biasadd_readvariableop_resource:	ђM
1vgg16_block3_conv2_conv2d_readvariableop_resource:ђђA
2vgg16_block3_conv2_biasadd_readvariableop_resource:	ђM
1vgg16_block3_conv3_conv2d_readvariableop_resource:ђђA
2vgg16_block3_conv3_biasadd_readvariableop_resource:	ђM
1vgg16_block4_conv1_conv2d_readvariableop_resource:ђђA
2vgg16_block4_conv1_biasadd_readvariableop_resource:	ђM
1vgg16_block4_conv2_conv2d_readvariableop_resource:ђђA
2vgg16_block4_conv2_biasadd_readvariableop_resource:	ђM
1vgg16_block4_conv3_conv2d_readvariableop_resource:ђђA
2vgg16_block4_conv3_biasadd_readvariableop_resource:	ђM
1vgg16_block5_conv1_conv2d_readvariableop_resource:ђђA
2vgg16_block5_conv1_biasadd_readvariableop_resource:	ђM
1vgg16_block5_conv2_conv2d_readvariableop_resource:ђђA
2vgg16_block5_conv2_biasadd_readvariableop_resource:	ђM
1vgg16_block5_conv3_conv2d_readvariableop_resource:ђђA
2vgg16_block5_conv3_biasadd_readvariableop_resource:	ђ8
$dense_matmul_readvariableop_resource:
ђ─3
%dense_biasadd_readvariableop_resource:
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpб)vgg16/block1_conv1/BiasAdd/ReadVariableOpб(vgg16/block1_conv1/Conv2D/ReadVariableOpб)vgg16/block1_conv2/BiasAdd/ReadVariableOpб(vgg16/block1_conv2/Conv2D/ReadVariableOpб)vgg16/block2_conv1/BiasAdd/ReadVariableOpб(vgg16/block2_conv1/Conv2D/ReadVariableOpб)vgg16/block2_conv2/BiasAdd/ReadVariableOpб(vgg16/block2_conv2/Conv2D/ReadVariableOpб)vgg16/block3_conv1/BiasAdd/ReadVariableOpб(vgg16/block3_conv1/Conv2D/ReadVariableOpб)vgg16/block3_conv2/BiasAdd/ReadVariableOpб(vgg16/block3_conv2/Conv2D/ReadVariableOpб)vgg16/block3_conv3/BiasAdd/ReadVariableOpб(vgg16/block3_conv3/Conv2D/ReadVariableOpб)vgg16/block4_conv1/BiasAdd/ReadVariableOpб(vgg16/block4_conv1/Conv2D/ReadVariableOpб)vgg16/block4_conv2/BiasAdd/ReadVariableOpб(vgg16/block4_conv2/Conv2D/ReadVariableOpб)vgg16/block4_conv3/BiasAdd/ReadVariableOpб(vgg16/block4_conv3/Conv2D/ReadVariableOpб)vgg16/block5_conv1/BiasAdd/ReadVariableOpб(vgg16/block5_conv1/Conv2D/ReadVariableOpб)vgg16/block5_conv2/BiasAdd/ReadVariableOpб(vgg16/block5_conv2/Conv2D/ReadVariableOpб)vgg16/block5_conv3/BiasAdd/ReadVariableOpб(vgg16/block5_conv3/Conv2D/ReadVariableOp╬
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(vgg16/block1_conv1/Conv2D/ReadVariableOpя
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
vgg16/block1_conv1/Conv2D┼
)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv1/BiasAdd/ReadVariableOpо
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2
vgg16/block1_conv1/BiasAddЏ
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
vgg16/block1_conv1/Relu╬
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(vgg16/block1_conv2/Conv2D/ReadVariableOp§
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
vgg16/block1_conv2/Conv2D┼
)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv2/BiasAdd/ReadVariableOpо
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2
vgg16/block1_conv2/BiasAddЏ
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
vgg16/block1_conv2/ReluН
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:         xx@*
ksize
*
paddingVALID*
strides
2
vgg16/block1_pool/MaxPool¤
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02*
(vgg16/block2_conv1/Conv2D/ReadVariableOpщ
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
vgg16/block2_conv1/Conv2Dк
)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block2_conv1/BiasAdd/ReadVariableOpН
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2
vgg16/block2_conv1/BiasAddџ
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
vgg16/block2_conv1/Reluл
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block2_conv2/Conv2D/ReadVariableOpЧ
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
vgg16/block2_conv2/Conv2Dк
)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block2_conv2/BiasAdd/ReadVariableOpН
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2
vgg16/block2_conv2/BiasAddџ
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
vgg16/block2_conv2/Reluо
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:         <<ђ*
ksize
*
paddingVALID*
strides
2
vgg16/block2_pool/MaxPoolл
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block3_conv1/Conv2D/ReadVariableOpщ
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
vgg16/block3_conv1/Conv2Dк
)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block3_conv1/BiasAdd/ReadVariableOpН
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv1/BiasAddџ
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv1/Reluл
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block3_conv2/Conv2D/ReadVariableOpЧ
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
vgg16/block3_conv2/Conv2Dк
)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block3_conv2/BiasAdd/ReadVariableOpН
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv2/BiasAddџ
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv2/Reluл
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block3_conv3/Conv2D/ReadVariableOpЧ
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
vgg16/block3_conv3/Conv2Dк
)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block3_conv3/BiasAdd/ReadVariableOpН
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv3/BiasAddџ
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv3/Reluо
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
vgg16/block3_pool/MaxPoolл
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block4_conv1/Conv2D/ReadVariableOpщ
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block4_conv1/Conv2Dк
)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block4_conv1/BiasAdd/ReadVariableOpН
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv1/BiasAddџ
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv1/Reluл
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block4_conv2/Conv2D/ReadVariableOpЧ
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block4_conv2/Conv2Dк
)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block4_conv2/BiasAdd/ReadVariableOpН
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv2/BiasAddџ
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv2/Reluл
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block4_conv3/Conv2D/ReadVariableOpЧ
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block4_conv3/Conv2Dк
)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block4_conv3/BiasAdd/ReadVariableOpН
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv3/BiasAddџ
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv3/Reluо
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
vgg16/block4_pool/MaxPoolл
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block5_conv1/Conv2D/ReadVariableOpщ
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block5_conv1/Conv2Dк
)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block5_conv1/BiasAdd/ReadVariableOpН
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv1/BiasAddџ
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv1/Reluл
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block5_conv2/Conv2D/ReadVariableOpЧ
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block5_conv2/Conv2Dк
)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block5_conv2/BiasAdd/ReadVariableOpН
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv2/BiasAddџ
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv2/Reluл
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block5_conv3/Conv2D/ReadVariableOpЧ
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block5_conv3/Conv2Dк
)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block5_conv3/BiasAdd/ReadVariableOpН
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv3/BiasAddџ
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv3/Reluо
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
vgg16/block5_pool/MaxPoolЈ
dropout/IdentityIdentity"vgg16/block5_pool/MaxPool:output:0*
T0*0
_output_shapes
:         ђ2
dropout/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     b  2
flatten/Constћ
flatten/ReshapeReshapedropout/Identity:output:0flatten/Const:output:0*
T0*)
_output_shapes
:         ђ─2
flatten/Reshapeѓ
dropout_1/IdentityIdentityflatten/Reshape:output:0*
T0*)
_output_shapes
:         ђ─2
dropout_1/IdentityА
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
ђ─*
dtype02
dense/MatMul/ReadVariableOpџ
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/MatMulъ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЎ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense/SigmoidЇ

IdentityIdentitydense/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
Ё[
і
@__inference_vgg16_layer_call_and_return_conditional_losses_22491

inputs,
block1_conv1_22420:@ 
block1_conv1_22422:@,
block1_conv2_22425:@@ 
block1_conv2_22427:@-
block2_conv1_22431:@ђ!
block2_conv1_22433:	ђ.
block2_conv2_22436:ђђ!
block2_conv2_22438:	ђ.
block3_conv1_22442:ђђ!
block3_conv1_22444:	ђ.
block3_conv2_22447:ђђ!
block3_conv2_22449:	ђ.
block3_conv3_22452:ђђ!
block3_conv3_22454:	ђ.
block4_conv1_22458:ђђ!
block4_conv1_22460:	ђ.
block4_conv2_22463:ђђ!
block4_conv2_22465:	ђ.
block4_conv3_22468:ђђ!
block4_conv3_22470:	ђ.
block5_conv1_22474:ђђ!
block5_conv1_22476:	ђ.
block5_conv2_22479:ђђ!
block5_conv2_22481:	ђ.
block5_conv3_22484:ђђ!
block5_conv3_22486:	ђ
identityѕб$block1_conv1/StatefulPartitionedCallб$block1_conv2/StatefulPartitionedCallб$block2_conv1/StatefulPartitionedCallб$block2_conv2/StatefulPartitionedCallб$block3_conv1/StatefulPartitionedCallб$block3_conv2/StatefulPartitionedCallб$block3_conv3/StatefulPartitionedCallб$block4_conv1/StatefulPartitionedCallб$block4_conv2/StatefulPartitionedCallб$block4_conv3/StatefulPartitionedCallб$block5_conv1/StatefulPartitionedCallб$block5_conv2/StatefulPartitionedCallб$block5_conv3/StatefulPartitionedCall»
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_22420block1_conv1_22422*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ­­@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_219572&
$block1_conv1/StatefulPartitionedCallо
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_22425block1_conv2_22427*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ­­@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_219742&
$block1_conv2/StatefulPartitionedCallІ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_218852
block1_pool/PartitionedCall╠
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_22431block2_conv1_22433*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         xxђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_219922&
$block2_conv1/StatefulPartitionedCallН
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_22436block2_conv2_22438*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         xxђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_220092&
$block2_conv2/StatefulPartitionedCallї
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_218972
block2_pool/PartitionedCall╠
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_22442block3_conv1_22444*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_220272&
$block3_conv1/StatefulPartitionedCallН
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_22447block3_conv2_22449*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_220442&
$block3_conv2/StatefulPartitionedCallН
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_22452block3_conv3_22454*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_220612&
$block3_conv3/StatefulPartitionedCallї
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_219092
block3_pool/PartitionedCall╠
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_22458block4_conv1_22460*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_220792&
$block4_conv1/StatefulPartitionedCallН
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_22463block4_conv2_22465*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_220962&
$block4_conv2/StatefulPartitionedCallН
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_22468block4_conv3_22470*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_221132&
$block4_conv3/StatefulPartitionedCallї
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_219212
block4_pool/PartitionedCall╠
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_22474block5_conv1_22476*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_221312&
$block5_conv1/StatefulPartitionedCallН
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_22479block5_conv2_22481*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_221482&
$block5_conv2/StatefulPartitionedCallН
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_22484block5_conv3_22486*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_221652&
$block5_conv3/StatefulPartitionedCallї
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_219332
block5_pool/PartitionedCallЧ
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
═
Б
,__inference_block2_conv1_layer_call_fn_24236

inputs"
unknown:@ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         xxђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_219922
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         xxђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         xx@
 
_user_specified_nameinputs
е"
Ц	
E__inference_sequential_layer_call_and_return_conditional_losses_23350
vgg16_input%
vgg16_23288:@
vgg16_23290:@%
vgg16_23292:@@
vgg16_23294:@&
vgg16_23296:@ђ
vgg16_23298:	ђ'
vgg16_23300:ђђ
vgg16_23302:	ђ'
vgg16_23304:ђђ
vgg16_23306:	ђ'
vgg16_23308:ђђ
vgg16_23310:	ђ'
vgg16_23312:ђђ
vgg16_23314:	ђ'
vgg16_23316:ђђ
vgg16_23318:	ђ'
vgg16_23320:ђђ
vgg16_23322:	ђ'
vgg16_23324:ђђ
vgg16_23326:	ђ'
vgg16_23328:ђђ
vgg16_23330:	ђ'
vgg16_23332:ђђ
vgg16_23334:	ђ'
vgg16_23336:ђђ
vgg16_23338:	ђ
dense_23344:
ђ─
dense_23346:
identityѕбdense/StatefulPartitionedCallбdropout/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallбvgg16/StatefulPartitionedCallЭ
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_23288vgg16_23290vgg16_23292vgg16_23294vgg16_23296vgg16_23298vgg16_23300vgg16_23302vgg16_23304vgg16_23306vgg16_23308vgg16_23310vgg16_23312vgg16_23314vgg16_23316vgg16_23318vgg16_23320vgg16_23322vgg16_23324vgg16_23326vgg16_23328vgg16_23330vgg16_23332vgg16_23334vgg16_23336vgg16_23338*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_224912
vgg16/StatefulPartitionedCallЉ
dropout/StatefulPartitionedCallStatefulPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_229692!
dropout/StatefulPartitionedCallЗ
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_228242
flatten/PartitionedCallг
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_229402#
!dropout_1/StatefulPartitionedCallд
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_23344dense_23346*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_228442
dense/StatefulPartitionedCallђ
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:         ­­
%
_user_specified_namevgg16_input
Л
А
,__inference_block1_conv2_layer_call_fn_24216

inputs!
unknown:@@
	unknown_0:@
identityѕбStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ­­@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_219742
StatefulPartitionedCallў
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ­­@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ­­@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­@
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block2_conv2_layer_call_and_return_conditional_losses_24247

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         xxђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         xxђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         xxђ
 
_user_specified_nameinputs
Б
ђ
G__inference_block1_conv1_layer_call_and_return_conditional_losses_21957

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
ReluА
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ­­@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ­­: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
д
b
F__inference_block3_pool_layer_call_and_return_conditional_losses_21909

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
═
G
+__inference_block3_pool_layer_call_fn_21915

inputs
identityу
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_219092
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
л
ц
,__inference_block3_conv1_layer_call_fn_24276

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_220272
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         <<ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         <<ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         <<ђ
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block4_conv1_layer_call_and_return_conditional_losses_22079

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
¤
▒
%__inference_vgg16_layer_call_fn_24034

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ%
	unknown_9:ђђ

unknown_10:	ђ&

unknown_11:ђђ

unknown_12:	ђ&

unknown_13:ђђ

unknown_14:	ђ&

unknown_15:ђђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ&

unknown_19:ђђ

unknown_20:	ђ&

unknown_21:ђђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ
identityѕбStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_221732
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block4_conv3_layer_call_and_return_conditional_losses_22113

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block2_conv2_layer_call_and_return_conditional_losses_22009

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         xxђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         xxђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         xxђ
 
_user_specified_nameinputs
░
ш
*__inference_sequential_layer_call_fn_23220
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ%
	unknown_9:ђђ

unknown_10:	ђ&

unknown_11:ђђ

unknown_12:	ђ&

unknown_13:ђђ

unknown_14:	ђ&

unknown_15:ђђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ&

unknown_19:ђђ

unknown_20:	ђ&

unknown_21:ђђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ

unknown_25:
ђ─

unknown_26:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_231002
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:         ­­
%
_user_specified_namevgg16_input
юК
я
E__inference_sequential_layer_call_and_return_conditional_losses_23655

inputsK
1vgg16_block1_conv1_conv2d_readvariableop_resource:@@
2vgg16_block1_conv1_biasadd_readvariableop_resource:@K
1vgg16_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg16_block1_conv2_biasadd_readvariableop_resource:@L
1vgg16_block2_conv1_conv2d_readvariableop_resource:@ђA
2vgg16_block2_conv1_biasadd_readvariableop_resource:	ђM
1vgg16_block2_conv2_conv2d_readvariableop_resource:ђђA
2vgg16_block2_conv2_biasadd_readvariableop_resource:	ђM
1vgg16_block3_conv1_conv2d_readvariableop_resource:ђђA
2vgg16_block3_conv1_biasadd_readvariableop_resource:	ђM
1vgg16_block3_conv2_conv2d_readvariableop_resource:ђђA
2vgg16_block3_conv2_biasadd_readvariableop_resource:	ђM
1vgg16_block3_conv3_conv2d_readvariableop_resource:ђђA
2vgg16_block3_conv3_biasadd_readvariableop_resource:	ђM
1vgg16_block4_conv1_conv2d_readvariableop_resource:ђђA
2vgg16_block4_conv1_biasadd_readvariableop_resource:	ђM
1vgg16_block4_conv2_conv2d_readvariableop_resource:ђђA
2vgg16_block4_conv2_biasadd_readvariableop_resource:	ђM
1vgg16_block4_conv3_conv2d_readvariableop_resource:ђђA
2vgg16_block4_conv3_biasadd_readvariableop_resource:	ђM
1vgg16_block5_conv1_conv2d_readvariableop_resource:ђђA
2vgg16_block5_conv1_biasadd_readvariableop_resource:	ђM
1vgg16_block5_conv2_conv2d_readvariableop_resource:ђђA
2vgg16_block5_conv2_biasadd_readvariableop_resource:	ђM
1vgg16_block5_conv3_conv2d_readvariableop_resource:ђђA
2vgg16_block5_conv3_biasadd_readvariableop_resource:	ђ8
$dense_matmul_readvariableop_resource:
ђ─3
%dense_biasadd_readvariableop_resource:
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpб)vgg16/block1_conv1/BiasAdd/ReadVariableOpб(vgg16/block1_conv1/Conv2D/ReadVariableOpб)vgg16/block1_conv2/BiasAdd/ReadVariableOpб(vgg16/block1_conv2/Conv2D/ReadVariableOpб)vgg16/block2_conv1/BiasAdd/ReadVariableOpб(vgg16/block2_conv1/Conv2D/ReadVariableOpб)vgg16/block2_conv2/BiasAdd/ReadVariableOpб(vgg16/block2_conv2/Conv2D/ReadVariableOpб)vgg16/block3_conv1/BiasAdd/ReadVariableOpб(vgg16/block3_conv1/Conv2D/ReadVariableOpб)vgg16/block3_conv2/BiasAdd/ReadVariableOpб(vgg16/block3_conv2/Conv2D/ReadVariableOpб)vgg16/block3_conv3/BiasAdd/ReadVariableOpб(vgg16/block3_conv3/Conv2D/ReadVariableOpб)vgg16/block4_conv1/BiasAdd/ReadVariableOpб(vgg16/block4_conv1/Conv2D/ReadVariableOpб)vgg16/block4_conv2/BiasAdd/ReadVariableOpб(vgg16/block4_conv2/Conv2D/ReadVariableOpб)vgg16/block4_conv3/BiasAdd/ReadVariableOpб(vgg16/block4_conv3/Conv2D/ReadVariableOpб)vgg16/block5_conv1/BiasAdd/ReadVariableOpб(vgg16/block5_conv1/Conv2D/ReadVariableOpб)vgg16/block5_conv2/BiasAdd/ReadVariableOpб(vgg16/block5_conv2/Conv2D/ReadVariableOpб)vgg16/block5_conv3/BiasAdd/ReadVariableOpб(vgg16/block5_conv3/Conv2D/ReadVariableOp╬
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(vgg16/block1_conv1/Conv2D/ReadVariableOpя
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
vgg16/block1_conv1/Conv2D┼
)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv1/BiasAdd/ReadVariableOpо
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2
vgg16/block1_conv1/BiasAddЏ
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
vgg16/block1_conv1/Relu╬
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(vgg16/block1_conv2/Conv2D/ReadVariableOp§
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
vgg16/block1_conv2/Conv2D┼
)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv2/BiasAdd/ReadVariableOpо
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2
vgg16/block1_conv2/BiasAddЏ
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
vgg16/block1_conv2/ReluН
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:         xx@*
ksize
*
paddingVALID*
strides
2
vgg16/block1_pool/MaxPool¤
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02*
(vgg16/block2_conv1/Conv2D/ReadVariableOpщ
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
vgg16/block2_conv1/Conv2Dк
)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block2_conv1/BiasAdd/ReadVariableOpН
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2
vgg16/block2_conv1/BiasAddџ
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
vgg16/block2_conv1/Reluл
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block2_conv2/Conv2D/ReadVariableOpЧ
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
vgg16/block2_conv2/Conv2Dк
)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block2_conv2/BiasAdd/ReadVariableOpН
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2
vgg16/block2_conv2/BiasAddџ
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
vgg16/block2_conv2/Reluо
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:         <<ђ*
ksize
*
paddingVALID*
strides
2
vgg16/block2_pool/MaxPoolл
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block3_conv1/Conv2D/ReadVariableOpщ
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
vgg16/block3_conv1/Conv2Dк
)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block3_conv1/BiasAdd/ReadVariableOpН
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv1/BiasAddџ
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv1/Reluл
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block3_conv2/Conv2D/ReadVariableOpЧ
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
vgg16/block3_conv2/Conv2Dк
)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block3_conv2/BiasAdd/ReadVariableOpН
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv2/BiasAddџ
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv2/Reluл
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block3_conv3/Conv2D/ReadVariableOpЧ
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
vgg16/block3_conv3/Conv2Dк
)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block3_conv3/BiasAdd/ReadVariableOpН
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv3/BiasAddџ
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
vgg16/block3_conv3/Reluо
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
vgg16/block3_pool/MaxPoolл
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block4_conv1/Conv2D/ReadVariableOpщ
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block4_conv1/Conv2Dк
)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block4_conv1/BiasAdd/ReadVariableOpН
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv1/BiasAddџ
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv1/Reluл
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block4_conv2/Conv2D/ReadVariableOpЧ
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block4_conv2/Conv2Dк
)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block4_conv2/BiasAdd/ReadVariableOpН
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv2/BiasAddџ
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv2/Reluл
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block4_conv3/Conv2D/ReadVariableOpЧ
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block4_conv3/Conv2Dк
)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block4_conv3/BiasAdd/ReadVariableOpН
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv3/BiasAddџ
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block4_conv3/Reluо
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
vgg16/block4_pool/MaxPoolл
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block5_conv1/Conv2D/ReadVariableOpщ
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block5_conv1/Conv2Dк
)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block5_conv1/BiasAdd/ReadVariableOpН
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv1/BiasAddџ
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv1/Reluл
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block5_conv2/Conv2D/ReadVariableOpЧ
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block5_conv2/Conv2Dк
)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block5_conv2/BiasAdd/ReadVariableOpН
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv2/BiasAddџ
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv2/Reluл
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02*
(vgg16/block5_conv3/Conv2D/ReadVariableOpЧ
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
vgg16/block5_conv3/Conv2Dк
)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02+
)vgg16/block5_conv3/BiasAdd/ReadVariableOpН
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv3/BiasAddџ
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
vgg16/block5_conv3/Reluо
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
vgg16/block5_pool/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?2
dropout/dropout/Const░
dropout/dropout/MulMul"vgg16/block5_pool/MaxPool:output:0dropout/dropout/Const:output:0*
T0*0
_output_shapes
:         ђ2
dropout/dropout/Mulђ
dropout/dropout/ShapeShape"vgg16/block5_pool/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/ShapeН
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*0
_output_shapes
:         ђ*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЁ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>2 
dropout/dropout/GreaterEqual/yу
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         ђ2
dropout/dropout/GreaterEqualа
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         ђ2
dropout/dropout/CastБ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*0
_output_shapes
:         ђ2
dropout/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     b  2
flatten/Constћ
flatten/ReshapeReshapedropout/dropout/Mul_1:z:0flatten/Const:output:0*
T0*)
_output_shapes
:         ђ─2
flatten/Reshapew
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/ConstЦ
dropout_1/dropout/MulMulflatten/Reshape:output:0 dropout_1/dropout/Const:output:0*
T0*)
_output_shapes
:         ђ─2
dropout_1/dropout/Mulz
dropout_1/dropout/ShapeShapeflatten/Reshape:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shapeн
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*)
_output_shapes
:         ђ─*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЅ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/yУ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         ђ─2 
dropout_1/dropout/GreaterEqualЪ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         ђ─2
dropout_1/dropout/Castц
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*)
_output_shapes
:         ђ─2
dropout_1/dropout/Mul_1А
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
ђ─*
dtype02
dense/MatMul/ReadVariableOpџ
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/MatMulъ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЎ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense/SigmoidЇ

IdentityIdentitydense/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
Л
А
,__inference_block1_conv1_layer_call_fn_24196

inputs!
unknown:@
	unknown_0:@
identityѕбStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ­­@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_219572
StatefulPartitionedCallў
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ­­@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ­­: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
л
ц
,__inference_block4_conv2_layer_call_fn_24356

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_220962
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
═
G
+__inference_block4_pool_layer_call_fn_21927

inputs
identityу
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_219212
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block3_conv2_layer_call_and_return_conditional_losses_22044

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         <<ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         <<ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         <<ђ
 
_user_specified_nameinputs
═
G
+__inference_block5_pool_layer_call_fn_21939

inputs
identityу
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_219332
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
А
­
*__inference_sequential_layer_call_fn_23777

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ%
	unknown_9:ђђ

unknown_10:	ђ&

unknown_11:ђђ

unknown_12:	ђ&

unknown_13:ђђ

unknown_14:	ђ&

unknown_15:ђђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ&

unknown_19:ђђ

unknown_20:	ђ&

unknown_21:ђђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ

unknown_25:
ђ─

unknown_26:
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_231002
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
л
ц
,__inference_block5_conv1_layer_call_fn_24396

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_221312
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ы
a
B__inference_dropout_layer_call_and_return_conditional_losses_22969

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         ђ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeй
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         ђ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>2
dropout/GreaterEqual/yК
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         ђ2
dropout/GreaterEqualѕ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         ђ2
dropout/CastЃ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         ђ2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
╔ќ
ш
@__inference_vgg16_layer_call_and_return_conditional_losses_23977

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@ђ;
,block2_conv1_biasadd_readvariableop_resource:	ђG
+block2_conv2_conv2d_readvariableop_resource:ђђ;
,block2_conv2_biasadd_readvariableop_resource:	ђG
+block3_conv1_conv2d_readvariableop_resource:ђђ;
,block3_conv1_biasadd_readvariableop_resource:	ђG
+block3_conv2_conv2d_readvariableop_resource:ђђ;
,block3_conv2_biasadd_readvariableop_resource:	ђG
+block3_conv3_conv2d_readvariableop_resource:ђђ;
,block3_conv3_biasadd_readvariableop_resource:	ђG
+block4_conv1_conv2d_readvariableop_resource:ђђ;
,block4_conv1_biasadd_readvariableop_resource:	ђG
+block4_conv2_conv2d_readvariableop_resource:ђђ;
,block4_conv2_biasadd_readvariableop_resource:	ђG
+block4_conv3_conv2d_readvariableop_resource:ђђ;
,block4_conv3_biasadd_readvariableop_resource:	ђG
+block5_conv1_conv2d_readvariableop_resource:ђђ;
,block5_conv1_biasadd_readvariableop_resource:	ђG
+block5_conv2_conv2d_readvariableop_resource:ђђ;
,block5_conv2_biasadd_readvariableop_resource:	ђG
+block5_conv3_conv2d_readvariableop_resource:ђђ;
,block5_conv3_biasadd_readvariableop_resource:	ђ
identityѕб#block1_conv1/BiasAdd/ReadVariableOpб"block1_conv1/Conv2D/ReadVariableOpб#block1_conv2/BiasAdd/ReadVariableOpб"block1_conv2/Conv2D/ReadVariableOpб#block2_conv1/BiasAdd/ReadVariableOpб"block2_conv1/Conv2D/ReadVariableOpб#block2_conv2/BiasAdd/ReadVariableOpб"block2_conv2/Conv2D/ReadVariableOpб#block3_conv1/BiasAdd/ReadVariableOpб"block3_conv1/Conv2D/ReadVariableOpб#block3_conv2/BiasAdd/ReadVariableOpб"block3_conv2/Conv2D/ReadVariableOpб#block3_conv3/BiasAdd/ReadVariableOpб"block3_conv3/Conv2D/ReadVariableOpб#block4_conv1/BiasAdd/ReadVariableOpб"block4_conv1/Conv2D/ReadVariableOpб#block4_conv2/BiasAdd/ReadVariableOpб"block4_conv2/Conv2D/ReadVariableOpб#block4_conv3/BiasAdd/ReadVariableOpб"block4_conv3/Conv2D/ReadVariableOpб#block5_conv1/BiasAdd/ReadVariableOpб"block5_conv1/Conv2D/ReadVariableOpб#block5_conv2/BiasAdd/ReadVariableOpб"block5_conv2/Conv2D/ReadVariableOpб#block5_conv3/BiasAdd/ReadVariableOpб"block5_conv3/Conv2D/ReadVariableOp╝
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp╠
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
block1_conv1/Conv2D│
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOpЙ
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2
block1_conv1/BiasAddЅ
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
block1_conv1/Relu╝
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpт
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
block1_conv2/Conv2D│
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOpЙ
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2
block1_conv2/BiasAddЅ
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
block1_conv2/Relu├
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:         xx@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPoolй
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpр
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
block2_conv1/Conv2D┤
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOpй
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2
block2_conv1/BiasAddѕ
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
block2_conv1/ReluЙ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpС
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
block2_conv2/Conv2D┤
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOpй
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2
block2_conv2/BiasAddѕ
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
block2_conv2/Relu─
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         <<ђ*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPoolЙ
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpр
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
block3_conv1/Conv2D┤
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOpй
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv1/BiasAddѕ
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv1/ReluЙ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpС
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
block3_conv2/Conv2D┤
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOpй
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv2/BiasAddѕ
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv2/ReluЙ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpС
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
block3_conv3/Conv2D┤
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOpй
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv3/BiasAddѕ
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv3/Relu─
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPoolЙ
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpр
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv1/Conv2D┤
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOpй
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv1/BiasAddѕ
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv1/ReluЙ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpС
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv2/Conv2D┤
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOpй
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv2/BiasAddѕ
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv2/ReluЙ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpС
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv3/Conv2D┤
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOpй
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv3/BiasAddѕ
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv3/Relu─
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPoolЙ
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpр
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv1/Conv2D┤
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOpй
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv1/BiasAddѕ
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv1/ReluЙ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpС
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv2/Conv2D┤
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOpй
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv2/BiasAddѕ
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv2/ReluЙ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpС
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv3/Conv2D┤
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOpй
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv3/BiasAddѕ
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv3/Relu─
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool╚
IdentityIdentityblock5_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
Ё[
і
@__inference_vgg16_layer_call_and_return_conditional_losses_22173

inputs,
block1_conv1_21958:@ 
block1_conv1_21960:@,
block1_conv2_21975:@@ 
block1_conv2_21977:@-
block2_conv1_21993:@ђ!
block2_conv1_21995:	ђ.
block2_conv2_22010:ђђ!
block2_conv2_22012:	ђ.
block3_conv1_22028:ђђ!
block3_conv1_22030:	ђ.
block3_conv2_22045:ђђ!
block3_conv2_22047:	ђ.
block3_conv3_22062:ђђ!
block3_conv3_22064:	ђ.
block4_conv1_22080:ђђ!
block4_conv1_22082:	ђ.
block4_conv2_22097:ђђ!
block4_conv2_22099:	ђ.
block4_conv3_22114:ђђ!
block4_conv3_22116:	ђ.
block5_conv1_22132:ђђ!
block5_conv1_22134:	ђ.
block5_conv2_22149:ђђ!
block5_conv2_22151:	ђ.
block5_conv3_22166:ђђ!
block5_conv3_22168:	ђ
identityѕб$block1_conv1/StatefulPartitionedCallб$block1_conv2/StatefulPartitionedCallб$block2_conv1/StatefulPartitionedCallб$block2_conv2/StatefulPartitionedCallб$block3_conv1/StatefulPartitionedCallб$block3_conv2/StatefulPartitionedCallб$block3_conv3/StatefulPartitionedCallб$block4_conv1/StatefulPartitionedCallб$block4_conv2/StatefulPartitionedCallб$block4_conv3/StatefulPartitionedCallб$block5_conv1/StatefulPartitionedCallб$block5_conv2/StatefulPartitionedCallб$block5_conv3/StatefulPartitionedCall»
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_21958block1_conv1_21960*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ­­@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_219572&
$block1_conv1/StatefulPartitionedCallо
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_21975block1_conv2_21977*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ­­@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_219742&
$block1_conv2/StatefulPartitionedCallІ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_218852
block1_pool/PartitionedCall╠
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_21993block2_conv1_21995*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         xxђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_219922&
$block2_conv1/StatefulPartitionedCallН
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_22010block2_conv2_22012*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         xxђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_220092&
$block2_conv2/StatefulPartitionedCallї
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_218972
block2_pool/PartitionedCall╠
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_22028block3_conv1_22030*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_220272&
$block3_conv1/StatefulPartitionedCallН
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_22045block3_conv2_22047*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_220442&
$block3_conv2/StatefulPartitionedCallН
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_22062block3_conv3_22064*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_220612&
$block3_conv3/StatefulPartitionedCallї
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_219092
block3_pool/PartitionedCall╠
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_22080block4_conv1_22082*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_220792&
$block4_conv1/StatefulPartitionedCallН
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_22097block4_conv2_22099*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_220962&
$block4_conv2/StatefulPartitionedCallН
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_22114block4_conv3_22116*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_221132&
$block4_conv3/StatefulPartitionedCallї
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_219212
block4_pool/PartitionedCall╠
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_22132block5_conv1_22134*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_221312&
$block5_conv1/StatefulPartitionedCallН
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_22149block5_conv2_22151*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_221482&
$block5_conv2/StatefulPartitionedCallН
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_22166block5_conv3_22168*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_221652&
$block5_conv3/StatefulPartitionedCallї
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_219332
block5_pool/PartitionedCallЧ
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
щ
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_22831

inputs

identity_1\
IdentityIdentityinputs*
T0*)
_output_shapes
:         ђ─2

Identityk

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:         ђ─2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђ─:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
Њ
`
B__inference_dropout_layer_call_and_return_conditional_losses_24096

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         ђ2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         ђ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Б
ђ
G__inference_block1_conv2_layer_call_and_return_conditional_losses_21974

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
ReluА
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ­­@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ­­@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ­­@
 
_user_specified_nameinputs
д
b
F__inference_block1_pool_layer_call_and_return_conditional_losses_21885

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓

з
@__inference_dense_layer_call_and_return_conditional_losses_24167

inputs2
matmul_readvariableop_resource:
ђ─-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђ─*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђ─: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block3_conv1_layer_call_and_return_conditional_losses_22027

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         <<ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         <<ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         <<ђ
 
_user_specified_nameinputs
Б
ђ
G__inference_block1_conv2_layer_call_and_return_conditional_losses_24207

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
ReluА
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ­­@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ­­@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ­­@
 
_user_specified_nameinputs
ћО
д
 __inference__wrapped_model_21879
vgg16_inputV
<sequential_vgg16_block1_conv1_conv2d_readvariableop_resource:@K
=sequential_vgg16_block1_conv1_biasadd_readvariableop_resource:@V
<sequential_vgg16_block1_conv2_conv2d_readvariableop_resource:@@K
=sequential_vgg16_block1_conv2_biasadd_readvariableop_resource:@W
<sequential_vgg16_block2_conv1_conv2d_readvariableop_resource:@ђL
=sequential_vgg16_block2_conv1_biasadd_readvariableop_resource:	ђX
<sequential_vgg16_block2_conv2_conv2d_readvariableop_resource:ђђL
=sequential_vgg16_block2_conv2_biasadd_readvariableop_resource:	ђX
<sequential_vgg16_block3_conv1_conv2d_readvariableop_resource:ђђL
=sequential_vgg16_block3_conv1_biasadd_readvariableop_resource:	ђX
<sequential_vgg16_block3_conv2_conv2d_readvariableop_resource:ђђL
=sequential_vgg16_block3_conv2_biasadd_readvariableop_resource:	ђX
<sequential_vgg16_block3_conv3_conv2d_readvariableop_resource:ђђL
=sequential_vgg16_block3_conv3_biasadd_readvariableop_resource:	ђX
<sequential_vgg16_block4_conv1_conv2d_readvariableop_resource:ђђL
=sequential_vgg16_block4_conv1_biasadd_readvariableop_resource:	ђX
<sequential_vgg16_block4_conv2_conv2d_readvariableop_resource:ђђL
=sequential_vgg16_block4_conv2_biasadd_readvariableop_resource:	ђX
<sequential_vgg16_block4_conv3_conv2d_readvariableop_resource:ђђL
=sequential_vgg16_block4_conv3_biasadd_readvariableop_resource:	ђX
<sequential_vgg16_block5_conv1_conv2d_readvariableop_resource:ђђL
=sequential_vgg16_block5_conv1_biasadd_readvariableop_resource:	ђX
<sequential_vgg16_block5_conv2_conv2d_readvariableop_resource:ђђL
=sequential_vgg16_block5_conv2_biasadd_readvariableop_resource:	ђX
<sequential_vgg16_block5_conv3_conv2d_readvariableop_resource:ђђL
=sequential_vgg16_block5_conv3_biasadd_readvariableop_resource:	ђC
/sequential_dense_matmul_readvariableop_resource:
ђ─>
0sequential_dense_biasadd_readvariableop_resource:
identityѕб'sequential/dense/BiasAdd/ReadVariableOpб&sequential/dense/MatMul/ReadVariableOpб4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOpб3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOpб4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOpб3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOpб4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOpб3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOpб4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOpб3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOpб4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOpб3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOpб4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOpб3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOpб4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOpб3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOpб4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOpб3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOpб4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOpб3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOpб4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOpб3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOpб4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOpб3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOpб4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOpб3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOpб4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOpб3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp№
3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOpё
$sequential/vgg16/block1_conv1/Conv2DConv2Dvgg16_input;sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2&
$sequential/vgg16/block1_conv1/Conv2DТ
4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype026
4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOpѓ
%sequential/vgg16/block1_conv1/BiasAddBiasAdd-sequential/vgg16/block1_conv1/Conv2D:output:0<sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2'
%sequential/vgg16/block1_conv1/BiasAdd╝
"sequential/vgg16/block1_conv1/ReluRelu.sequential/vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2$
"sequential/vgg16/block1_conv1/Relu№
3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOpЕ
$sequential/vgg16/block1_conv2/Conv2DConv2D0sequential/vgg16/block1_conv1/Relu:activations:0;sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2&
$sequential/vgg16/block1_conv2/Conv2DТ
4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype026
4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOpѓ
%sequential/vgg16/block1_conv2/BiasAddBiasAdd-sequential/vgg16/block1_conv2/Conv2D:output:0<sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2'
%sequential/vgg16/block1_conv2/BiasAdd╝
"sequential/vgg16/block1_conv2/ReluRelu.sequential/vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2$
"sequential/vgg16/block1_conv2/ReluШ
$sequential/vgg16/block1_pool/MaxPoolMaxPool0sequential/vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:         xx@*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block1_pool/MaxPool­
3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype025
3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOpЦ
$sequential/vgg16/block2_conv1/Conv2DConv2D-sequential/vgg16/block1_pool/MaxPool:output:0;sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2&
$sequential/vgg16/block2_conv1/Conv2Dу
4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block2_conv1/BiasAddBiasAdd-sequential/vgg16/block2_conv1/Conv2D:output:0<sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2'
%sequential/vgg16/block2_conv1/BiasAdd╗
"sequential/vgg16/block2_conv1/ReluRelu.sequential/vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2$
"sequential/vgg16/block2_conv1/Reluы
3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype025
3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOpе
$sequential/vgg16/block2_conv2/Conv2DConv2D0sequential/vgg16/block2_conv1/Relu:activations:0;sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2&
$sequential/vgg16/block2_conv2/Conv2Dу
4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block2_conv2/BiasAddBiasAdd-sequential/vgg16/block2_conv2/Conv2D:output:0<sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2'
%sequential/vgg16/block2_conv2/BiasAdd╗
"sequential/vgg16/block2_conv2/ReluRelu.sequential/vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2$
"sequential/vgg16/block2_conv2/Reluэ
$sequential/vgg16/block2_pool/MaxPoolMaxPool0sequential/vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:         <<ђ*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block2_pool/MaxPoolы
3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype025
3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOpЦ
$sequential/vgg16/block3_conv1/Conv2DConv2D-sequential/vgg16/block2_pool/MaxPool:output:0;sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2&
$sequential/vgg16/block3_conv1/Conv2Dу
4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block3_conv1/BiasAddBiasAdd-sequential/vgg16/block3_conv1/Conv2D:output:0<sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2'
%sequential/vgg16/block3_conv1/BiasAdd╗
"sequential/vgg16/block3_conv1/ReluRelu.sequential/vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2$
"sequential/vgg16/block3_conv1/Reluы
3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype025
3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOpе
$sequential/vgg16/block3_conv2/Conv2DConv2D0sequential/vgg16/block3_conv1/Relu:activations:0;sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2&
$sequential/vgg16/block3_conv2/Conv2Dу
4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block3_conv2/BiasAddBiasAdd-sequential/vgg16/block3_conv2/Conv2D:output:0<sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2'
%sequential/vgg16/block3_conv2/BiasAdd╗
"sequential/vgg16/block3_conv2/ReluRelu.sequential/vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2$
"sequential/vgg16/block3_conv2/Reluы
3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype025
3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOpе
$sequential/vgg16/block3_conv3/Conv2DConv2D0sequential/vgg16/block3_conv2/Relu:activations:0;sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2&
$sequential/vgg16/block3_conv3/Conv2Dу
4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block3_conv3/BiasAddBiasAdd-sequential/vgg16/block3_conv3/Conv2D:output:0<sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2'
%sequential/vgg16/block3_conv3/BiasAdd╗
"sequential/vgg16/block3_conv3/ReluRelu.sequential/vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2$
"sequential/vgg16/block3_conv3/Reluэ
$sequential/vgg16/block3_pool/MaxPoolMaxPool0sequential/vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block3_pool/MaxPoolы
3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype025
3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOpЦ
$sequential/vgg16/block4_conv1/Conv2DConv2D-sequential/vgg16/block3_pool/MaxPool:output:0;sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2&
$sequential/vgg16/block4_conv1/Conv2Dу
4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block4_conv1/BiasAddBiasAdd-sequential/vgg16/block4_conv1/Conv2D:output:0<sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2'
%sequential/vgg16/block4_conv1/BiasAdd╗
"sequential/vgg16/block4_conv1/ReluRelu.sequential/vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2$
"sequential/vgg16/block4_conv1/Reluы
3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype025
3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOpе
$sequential/vgg16/block4_conv2/Conv2DConv2D0sequential/vgg16/block4_conv1/Relu:activations:0;sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2&
$sequential/vgg16/block4_conv2/Conv2Dу
4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block4_conv2/BiasAddBiasAdd-sequential/vgg16/block4_conv2/Conv2D:output:0<sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2'
%sequential/vgg16/block4_conv2/BiasAdd╗
"sequential/vgg16/block4_conv2/ReluRelu.sequential/vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2$
"sequential/vgg16/block4_conv2/Reluы
3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype025
3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOpе
$sequential/vgg16/block4_conv3/Conv2DConv2D0sequential/vgg16/block4_conv2/Relu:activations:0;sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2&
$sequential/vgg16/block4_conv3/Conv2Dу
4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block4_conv3/BiasAddBiasAdd-sequential/vgg16/block4_conv3/Conv2D:output:0<sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2'
%sequential/vgg16/block4_conv3/BiasAdd╗
"sequential/vgg16/block4_conv3/ReluRelu.sequential/vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2$
"sequential/vgg16/block4_conv3/Reluэ
$sequential/vgg16/block4_pool/MaxPoolMaxPool0sequential/vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block4_pool/MaxPoolы
3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype025
3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOpЦ
$sequential/vgg16/block5_conv1/Conv2DConv2D-sequential/vgg16/block4_pool/MaxPool:output:0;sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2&
$sequential/vgg16/block5_conv1/Conv2Dу
4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block5_conv1/BiasAddBiasAdd-sequential/vgg16/block5_conv1/Conv2D:output:0<sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2'
%sequential/vgg16/block5_conv1/BiasAdd╗
"sequential/vgg16/block5_conv1/ReluRelu.sequential/vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2$
"sequential/vgg16/block5_conv1/Reluы
3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype025
3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOpе
$sequential/vgg16/block5_conv2/Conv2DConv2D0sequential/vgg16/block5_conv1/Relu:activations:0;sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2&
$sequential/vgg16/block5_conv2/Conv2Dу
4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block5_conv2/BiasAddBiasAdd-sequential/vgg16/block5_conv2/Conv2D:output:0<sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2'
%sequential/vgg16/block5_conv2/BiasAdd╗
"sequential/vgg16/block5_conv2/ReluRelu.sequential/vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2$
"sequential/vgg16/block5_conv2/Reluы
3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype025
3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOpе
$sequential/vgg16/block5_conv3/Conv2DConv2D0sequential/vgg16/block5_conv2/Relu:activations:0;sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2&
$sequential/vgg16/block5_conv3/Conv2Dу
4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOpЂ
%sequential/vgg16/block5_conv3/BiasAddBiasAdd-sequential/vgg16/block5_conv3/Conv2D:output:0<sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2'
%sequential/vgg16/block5_conv3/BiasAdd╗
"sequential/vgg16/block5_conv3/ReluRelu.sequential/vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2$
"sequential/vgg16/block5_conv3/Reluэ
$sequential/vgg16/block5_pool/MaxPoolMaxPool0sequential/vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block5_pool/MaxPool░
sequential/dropout/IdentityIdentity-sequential/vgg16/block5_pool/MaxPool:output:0*
T0*0
_output_shapes
:         ђ2
sequential/dropout/IdentityЁ
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     b  2
sequential/flatten/Const└
sequential/flatten/ReshapeReshape$sequential/dropout/Identity:output:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:         ђ─2
sequential/flatten/ReshapeБ
sequential/dropout_1/IdentityIdentity#sequential/flatten/Reshape:output:0*
T0*)
_output_shapes
:         ђ─2
sequential/dropout_1/Identity┬
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
ђ─*
dtype02(
&sequential/dense/MatMul/ReadVariableOpк
sequential/dense/MatMulMatMul&sequential/dropout_1/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/dense/MatMul┐
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp┼
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/dense/BiasAddћ
sequential/dense/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential/dense/Sigmoid╠
IdentityIdentitysequential/dense/Sigmoid:y:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp5^sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp4^sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp5^sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp4^sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp5^sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp4^sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2l
4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp2l
4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp2l
4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp:^ Z
1
_output_shapes
:         ­­
%
_user_specified_namevgg16_input
А
­
*__inference_sequential_layer_call_fn_23716

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ%
	unknown_9:ђђ

unknown_10:	ђ&

unknown_11:ђђ

unknown_12:	ђ&

unknown_13:ђђ

unknown_14:	ђ&

unknown_15:ђђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ&

unknown_19:ђђ

unknown_20:	ђ&

unknown_21:ђђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ

unknown_25:
ђ─

unknown_26:
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_228512
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
л
ц
,__inference_block5_conv3_layer_call_fn_24436

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_221652
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block3_conv1_layer_call_and_return_conditional_losses_24267

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         <<ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         <<ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         <<ђ
 
_user_specified_nameinputs
═
G
+__inference_block1_pool_layer_call_fn_21891

inputs
identityу
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_218852
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ў
ћ
%__inference_dense_layer_call_fn_24176

inputs
unknown:
ђ─
	unknown_0:
identityѕбStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_228442
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђ─: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
▄
C
'__inference_dropout_layer_call_fn_24113

inputs
identity╔
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_228162
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
л
ц
,__inference_block2_conv2_layer_call_fn_24256

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         xxђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_220092
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         xxђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         xxђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         xxђ
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block5_conv1_layer_call_and_return_conditional_losses_22131

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
¤
▒
%__inference_vgg16_layer_call_fn_24091

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ%
	unknown_9:ђђ

unknown_10:	ђ&

unknown_11:ђђ

unknown_12:	ђ&

unknown_13:ђђ

unknown_14:	ђ&

unknown_15:ђђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ&

unknown_19:ђђ

unknown_20:	ђ&

unknown_21:ђђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ
identityѕбStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_224912
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
У
^
B__inference_flatten_layer_call_and_return_conditional_losses_24124

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     b  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         ђ─2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         ђ─2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
л
ц
,__inference_block4_conv1_layer_call_fn_24336

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_220792
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
▓

з
@__inference_dense_layer_call_and_return_conditional_losses_22844

inputs2
matmul_readvariableop_resource:
ђ─-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђ─*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђ─: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
╬
C
'__inference_flatten_layer_call_fn_24129

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_228242
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         ђ─2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ъ
ѓ
G__inference_block2_conv1_layer_call_and_return_conditional_losses_24227

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpќ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         xxђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         xx@
 
_user_specified_nameinputs
╗
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_24146

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constu
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:         ђ─2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeХ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:         ђ─*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y└
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         ђ─2
dropout/GreaterEqualЂ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         ђ─2
dropout/Cast|
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:         ђ─2
dropout/Mul_1g
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:         ђ─2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђ─:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
л
ц
,__inference_block3_conv3_layer_call_fn_24316

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_220612
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         <<ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         <<ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         <<ђ
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block5_conv2_layer_call_and_return_conditional_losses_22148

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
м
▓
%__inference_vgg16_layer_call_fn_22603
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ%
	unknown_9:ђђ

unknown_10:	ђ&

unknown_11:ђђ

unknown_12:	ђ&

unknown_13:ђђ

unknown_14:	ђ&

unknown_15:ђђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ&

unknown_19:ђђ

unknown_20:	ђ&

unknown_21:ђђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ
identityѕбStatefulPartitionedCall┴
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_224912
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
Ў"
а	
E__inference_sequential_layer_call_and_return_conditional_losses_23100

inputs%
vgg16_23038:@
vgg16_23040:@%
vgg16_23042:@@
vgg16_23044:@&
vgg16_23046:@ђ
vgg16_23048:	ђ'
vgg16_23050:ђђ
vgg16_23052:	ђ'
vgg16_23054:ђђ
vgg16_23056:	ђ'
vgg16_23058:ђђ
vgg16_23060:	ђ'
vgg16_23062:ђђ
vgg16_23064:	ђ'
vgg16_23066:ђђ
vgg16_23068:	ђ'
vgg16_23070:ђђ
vgg16_23072:	ђ'
vgg16_23074:ђђ
vgg16_23076:	ђ'
vgg16_23078:ђђ
vgg16_23080:	ђ'
vgg16_23082:ђђ
vgg16_23084:	ђ'
vgg16_23086:ђђ
vgg16_23088:	ђ
dense_23094:
ђ─
dense_23096:
identityѕбdense/StatefulPartitionedCallбdropout/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallбvgg16/StatefulPartitionedCallз
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputsvgg16_23038vgg16_23040vgg16_23042vgg16_23044vgg16_23046vgg16_23048vgg16_23050vgg16_23052vgg16_23054vgg16_23056vgg16_23058vgg16_23060vgg16_23062vgg16_23064vgg16_23066vgg16_23068vgg16_23070vgg16_23072vgg16_23074vgg16_23076vgg16_23078vgg16_23080vgg16_23082vgg16_23084vgg16_23086vgg16_23088*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_224912
vgg16/StatefulPartitionedCallЉ
dropout/StatefulPartitionedCallStatefulPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_229692!
dropout/StatefulPartitionedCallЗ
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_228242
flatten/PartitionedCallг
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_229402#
!dropout_1/StatefulPartitionedCallд
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_23094dense_23096*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_228442
dense/StatefulPartitionedCallђ
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
д
b
F__inference_block2_pool_layer_call_and_return_conditional_losses_21897

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
л
ц
,__inference_block3_conv2_layer_call_fn_24296

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_220442
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         <<ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         <<ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         <<ђ
 
_user_specified_nameinputs
╗
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_22940

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constu
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:         ђ─2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeХ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:         ђ─*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y└
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         ђ─2
dropout/GreaterEqualЂ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         ђ─2
dropout/Cast|
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:         ђ─2
dropout/Mul_1g
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:         ђ─2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђ─:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
«
▀
E__inference_sequential_layer_call_and_return_conditional_losses_23285
vgg16_input%
vgg16_23223:@
vgg16_23225:@%
vgg16_23227:@@
vgg16_23229:@&
vgg16_23231:@ђ
vgg16_23233:	ђ'
vgg16_23235:ђђ
vgg16_23237:	ђ'
vgg16_23239:ђђ
vgg16_23241:	ђ'
vgg16_23243:ђђ
vgg16_23245:	ђ'
vgg16_23247:ђђ
vgg16_23249:	ђ'
vgg16_23251:ђђ
vgg16_23253:	ђ'
vgg16_23255:ђђ
vgg16_23257:	ђ'
vgg16_23259:ђђ
vgg16_23261:	ђ'
vgg16_23263:ђђ
vgg16_23265:	ђ'
vgg16_23267:ђђ
vgg16_23269:	ђ'
vgg16_23271:ђђ
vgg16_23273:	ђ
dense_23279:
ђ─
dense_23281:
identityѕбdense/StatefulPartitionedCallбvgg16/StatefulPartitionedCallЭ
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_23223vgg16_23225vgg16_23227vgg16_23229vgg16_23231vgg16_23233vgg16_23235vgg16_23237vgg16_23239vgg16_23241vgg16_23243vgg16_23245vgg16_23247vgg16_23249vgg16_23251vgg16_23253vgg16_23255vgg16_23257vgg16_23259vgg16_23261vgg16_23263vgg16_23265vgg16_23267vgg16_23269vgg16_23271vgg16_23273*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_221732
vgg16/StatefulPartitionedCallщ
dropout/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_228162
dropout/PartitionedCallВ
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_228242
flatten/PartitionedCallЫ
dropout_1/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_228312
dropout_1/PartitionedCallъ
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_23279dense_23281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_228442
dense/StatefulPartitionedCall║
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:         ­­
%
_user_specified_namevgg16_input
═
G
+__inference_block2_pool_layer_call_fn_21903

inputs
identityу
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_218972
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ъ
ѓ
G__inference_block2_conv1_layer_call_and_return_conditional_losses_21992

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpќ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         xxђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         xx@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         xx@
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block4_conv3_layer_call_and_return_conditional_losses_24367

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block5_conv1_layer_call_and_return_conditional_losses_24387

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
▓Е
Е
!__inference__traced_restore_24715
file_prefix1
assignvariableop_dense_kernel:
ђ─+
assignvariableop_1_dense_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: @
&assignvariableop_7_block1_conv1_kernel:@2
$assignvariableop_8_block1_conv1_bias:@@
&assignvariableop_9_block1_conv2_kernel:@@3
%assignvariableop_10_block1_conv2_bias:@B
'assignvariableop_11_block2_conv1_kernel:@ђ4
%assignvariableop_12_block2_conv1_bias:	ђC
'assignvariableop_13_block2_conv2_kernel:ђђ4
%assignvariableop_14_block2_conv2_bias:	ђC
'assignvariableop_15_block3_conv1_kernel:ђђ4
%assignvariableop_16_block3_conv1_bias:	ђC
'assignvariableop_17_block3_conv2_kernel:ђђ4
%assignvariableop_18_block3_conv2_bias:	ђC
'assignvariableop_19_block3_conv3_kernel:ђђ4
%assignvariableop_20_block3_conv3_bias:	ђC
'assignvariableop_21_block4_conv1_kernel:ђђ4
%assignvariableop_22_block4_conv1_bias:	ђC
'assignvariableop_23_block4_conv2_kernel:ђђ4
%assignvariableop_24_block4_conv2_bias:	ђC
'assignvariableop_25_block4_conv3_kernel:ђђ4
%assignvariableop_26_block4_conv3_bias:	ђC
'assignvariableop_27_block5_conv1_kernel:ђђ4
%assignvariableop_28_block5_conv1_bias:	ђC
'assignvariableop_29_block5_conv2_kernel:ђђ4
%assignvariableop_30_block5_conv2_bias:	ђC
'assignvariableop_31_block5_conv3_kernel:ђђ4
%assignvariableop_32_block5_conv3_bias:	ђ#
assignvariableop_33_total: #
assignvariableop_34_count: %
assignvariableop_35_total_1: %
assignvariableop_36_count_1: ;
'assignvariableop_37_adam_dense_kernel_m:
ђ─3
%assignvariableop_38_adam_dense_bias_m:;
'assignvariableop_39_adam_dense_kernel_v:
ђ─3
%assignvariableop_40_adam_dense_bias_v:
identity_42ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Й
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*╩
value└Bй*B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesР
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesђ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Й
_output_shapesФ
е::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityю
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1б
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2А
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Б
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Б
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5б
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ф
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ф
AssignVariableOp_7AssignVariableOp&assignvariableop_7_block1_conv1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Е
AssignVariableOp_8AssignVariableOp$assignvariableop_8_block1_conv1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ф
AssignVariableOp_9AssignVariableOp&assignvariableop_9_block1_conv2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Г
AssignVariableOp_10AssignVariableOp%assignvariableop_10_block1_conv2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11»
AssignVariableOp_11AssignVariableOp'assignvariableop_11_block2_conv1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Г
AssignVariableOp_12AssignVariableOp%assignvariableop_12_block2_conv1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13»
AssignVariableOp_13AssignVariableOp'assignvariableop_13_block2_conv2_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Г
AssignVariableOp_14AssignVariableOp%assignvariableop_14_block2_conv2_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15»
AssignVariableOp_15AssignVariableOp'assignvariableop_15_block3_conv1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Г
AssignVariableOp_16AssignVariableOp%assignvariableop_16_block3_conv1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17»
AssignVariableOp_17AssignVariableOp'assignvariableop_17_block3_conv2_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Г
AssignVariableOp_18AssignVariableOp%assignvariableop_18_block3_conv2_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19»
AssignVariableOp_19AssignVariableOp'assignvariableop_19_block3_conv3_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Г
AssignVariableOp_20AssignVariableOp%assignvariableop_20_block3_conv3_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21»
AssignVariableOp_21AssignVariableOp'assignvariableop_21_block4_conv1_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Г
AssignVariableOp_22AssignVariableOp%assignvariableop_22_block4_conv1_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23»
AssignVariableOp_23AssignVariableOp'assignvariableop_23_block4_conv2_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Г
AssignVariableOp_24AssignVariableOp%assignvariableop_24_block4_conv2_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25»
AssignVariableOp_25AssignVariableOp'assignvariableop_25_block4_conv3_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Г
AssignVariableOp_26AssignVariableOp%assignvariableop_26_block4_conv3_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27»
AssignVariableOp_27AssignVariableOp'assignvariableop_27_block5_conv1_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Г
AssignVariableOp_28AssignVariableOp%assignvariableop_28_block5_conv1_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29»
AssignVariableOp_29AssignVariableOp'assignvariableop_29_block5_conv2_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Г
AssignVariableOp_30AssignVariableOp%assignvariableop_30_block5_conv2_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31»
AssignVariableOp_31AssignVariableOp'assignvariableop_31_block5_conv3_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Г
AssignVariableOp_32AssignVariableOp%assignvariableop_32_block5_conv3_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33А
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34А
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Б
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Б
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37»
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_dense_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Г
AssignVariableOp_38AssignVariableOp%assignvariableop_38_adam_dense_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39»
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Г
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_dense_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_409
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpС
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_41О
Identity_42IdentityIdentity_41:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_42"#
identity_42Identity_42:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
░
ш
*__inference_sequential_layer_call_fn_22910
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ%
	unknown_9:ђђ

unknown_10:	ђ&

unknown_11:ђђ

unknown_12:	ђ&

unknown_13:ђђ

unknown_14:	ђ&

unknown_15:ђђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ&

unknown_19:ђђ

unknown_20:	ђ&

unknown_21:ђђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ

unknown_25:
ђ─

unknown_26:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_228512
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:         ­­
%
_user_specified_namevgg16_input
м
▓
%__inference_vgg16_layer_call_fn_22228
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ%
	unknown_9:ђђ

unknown_10:	ђ&

unknown_11:ђђ

unknown_12:	ђ&

unknown_13:ђђ

unknown_14:	ђ&

unknown_15:ђђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ&

unknown_19:ђђ

unknown_20:	ђ&

unknown_21:ђђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ
identityѕбStatefulPartitionedCall┴
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_221732
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
д
b
F__inference_block5_pool_layer_call_and_return_conditional_losses_21933

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╔ќ
ш
@__inference_vgg16_layer_call_and_return_conditional_losses_23877

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@ђ;
,block2_conv1_biasadd_readvariableop_resource:	ђG
+block2_conv2_conv2d_readvariableop_resource:ђђ;
,block2_conv2_biasadd_readvariableop_resource:	ђG
+block3_conv1_conv2d_readvariableop_resource:ђђ;
,block3_conv1_biasadd_readvariableop_resource:	ђG
+block3_conv2_conv2d_readvariableop_resource:ђђ;
,block3_conv2_biasadd_readvariableop_resource:	ђG
+block3_conv3_conv2d_readvariableop_resource:ђђ;
,block3_conv3_biasadd_readvariableop_resource:	ђG
+block4_conv1_conv2d_readvariableop_resource:ђђ;
,block4_conv1_biasadd_readvariableop_resource:	ђG
+block4_conv2_conv2d_readvariableop_resource:ђђ;
,block4_conv2_biasadd_readvariableop_resource:	ђG
+block4_conv3_conv2d_readvariableop_resource:ђђ;
,block4_conv3_biasadd_readvariableop_resource:	ђG
+block5_conv1_conv2d_readvariableop_resource:ђђ;
,block5_conv1_biasadd_readvariableop_resource:	ђG
+block5_conv2_conv2d_readvariableop_resource:ђђ;
,block5_conv2_biasadd_readvariableop_resource:	ђG
+block5_conv3_conv2d_readvariableop_resource:ђђ;
,block5_conv3_biasadd_readvariableop_resource:	ђ
identityѕб#block1_conv1/BiasAdd/ReadVariableOpб"block1_conv1/Conv2D/ReadVariableOpб#block1_conv2/BiasAdd/ReadVariableOpб"block1_conv2/Conv2D/ReadVariableOpб#block2_conv1/BiasAdd/ReadVariableOpб"block2_conv1/Conv2D/ReadVariableOpб#block2_conv2/BiasAdd/ReadVariableOpб"block2_conv2/Conv2D/ReadVariableOpб#block3_conv1/BiasAdd/ReadVariableOpб"block3_conv1/Conv2D/ReadVariableOpб#block3_conv2/BiasAdd/ReadVariableOpб"block3_conv2/Conv2D/ReadVariableOpб#block3_conv3/BiasAdd/ReadVariableOpб"block3_conv3/Conv2D/ReadVariableOpб#block4_conv1/BiasAdd/ReadVariableOpб"block4_conv1/Conv2D/ReadVariableOpб#block4_conv2/BiasAdd/ReadVariableOpб"block4_conv2/Conv2D/ReadVariableOpб#block4_conv3/BiasAdd/ReadVariableOpб"block4_conv3/Conv2D/ReadVariableOpб#block5_conv1/BiasAdd/ReadVariableOpб"block5_conv1/Conv2D/ReadVariableOpб#block5_conv2/BiasAdd/ReadVariableOpб"block5_conv2/Conv2D/ReadVariableOpб#block5_conv3/BiasAdd/ReadVariableOpб"block5_conv3/Conv2D/ReadVariableOp╝
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp╠
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
block1_conv1/Conv2D│
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOpЙ
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2
block1_conv1/BiasAddЅ
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
block1_conv1/Relu╝
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpт
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@*
paddingSAME*
strides
2
block1_conv2/Conv2D│
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOpЙ
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ­­@2
block1_conv2/BiasAddЅ
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         ­­@2
block1_conv2/Relu├
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:         xx@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPoolй
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpр
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
block2_conv1/Conv2D┤
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOpй
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2
block2_conv1/BiasAddѕ
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
block2_conv1/ReluЙ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpС
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ*
paddingSAME*
strides
2
block2_conv2/Conv2D┤
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOpй
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         xxђ2
block2_conv2/BiasAddѕ
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         xxђ2
block2_conv2/Relu─
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         <<ђ*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPoolЙ
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpр
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
block3_conv1/Conv2D┤
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOpй
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv1/BiasAddѕ
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv1/ReluЙ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpС
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
block3_conv2/Conv2D┤
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOpй
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv2/BiasAddѕ
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv2/ReluЙ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpС
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
block3_conv3/Conv2D┤
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOpй
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv3/BiasAddѕ
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
block3_conv3/Relu─
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPoolЙ
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpр
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv1/Conv2D┤
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOpй
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv1/BiasAddѕ
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv1/ReluЙ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpС
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv2/Conv2D┤
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOpй
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv2/BiasAddѕ
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv2/ReluЙ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpС
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv3/Conv2D┤
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOpй
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv3/BiasAddѕ
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv3/Relu─
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPoolЙ
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpр
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv1/Conv2D┤
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOpй
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv1/BiasAddѕ
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv1/ReluЙ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpС
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv2/Conv2D┤
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOpй
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv2/BiasAddѕ
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv2/ReluЙ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpС
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv3/Conv2D┤
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOpй
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv3/BiasAddѕ
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv3/Relu─
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool╚
IdentityIdentityblock5_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
д
b
F__inference_block4_pool_layer_call_and_return_conditional_losses_21921

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ѕ[
І
@__inference_vgg16_layer_call_and_return_conditional_losses_22677
input_1,
block1_conv1_22606:@ 
block1_conv1_22608:@,
block1_conv2_22611:@@ 
block1_conv2_22613:@-
block2_conv1_22617:@ђ!
block2_conv1_22619:	ђ.
block2_conv2_22622:ђђ!
block2_conv2_22624:	ђ.
block3_conv1_22628:ђђ!
block3_conv1_22630:	ђ.
block3_conv2_22633:ђђ!
block3_conv2_22635:	ђ.
block3_conv3_22638:ђђ!
block3_conv3_22640:	ђ.
block4_conv1_22644:ђђ!
block4_conv1_22646:	ђ.
block4_conv2_22649:ђђ!
block4_conv2_22651:	ђ.
block4_conv3_22654:ђђ!
block4_conv3_22656:	ђ.
block5_conv1_22660:ђђ!
block5_conv1_22662:	ђ.
block5_conv2_22665:ђђ!
block5_conv2_22667:	ђ.
block5_conv3_22670:ђђ!
block5_conv3_22672:	ђ
identityѕб$block1_conv1/StatefulPartitionedCallб$block1_conv2/StatefulPartitionedCallб$block2_conv1/StatefulPartitionedCallб$block2_conv2/StatefulPartitionedCallб$block3_conv1/StatefulPartitionedCallб$block3_conv2/StatefulPartitionedCallб$block3_conv3/StatefulPartitionedCallб$block4_conv1/StatefulPartitionedCallб$block4_conv2/StatefulPartitionedCallб$block4_conv3/StatefulPartitionedCallб$block5_conv1/StatefulPartitionedCallб$block5_conv2/StatefulPartitionedCallб$block5_conv3/StatefulPartitionedCall░
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_22606block1_conv1_22608*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ­­@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_219572&
$block1_conv1/StatefulPartitionedCallо
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_22611block1_conv2_22613*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ­­@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_219742&
$block1_conv2/StatefulPartitionedCallІ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         xx@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_218852
block1_pool/PartitionedCall╠
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_22617block2_conv1_22619*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         xxђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_219922&
$block2_conv1/StatefulPartitionedCallН
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_22622block2_conv2_22624*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         xxђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_220092&
$block2_conv2/StatefulPartitionedCallї
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_218972
block2_pool/PartitionedCall╠
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_22628block3_conv1_22630*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_220272&
$block3_conv1/StatefulPartitionedCallН
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_22633block3_conv2_22635*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_220442&
$block3_conv2/StatefulPartitionedCallН
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_22638block3_conv3_22640*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         <<ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_220612&
$block3_conv3/StatefulPartitionedCallї
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_219092
block3_pool/PartitionedCall╠
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_22644block4_conv1_22646*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_220792&
$block4_conv1/StatefulPartitionedCallН
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_22649block4_conv2_22651*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_220962&
$block4_conv2/StatefulPartitionedCallН
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_22654block4_conv3_22656*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_221132&
$block4_conv3/StatefulPartitionedCallї
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_219212
block4_pool/PartitionedCall╠
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_22660block5_conv1_22662*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_221312&
$block5_conv1/StatefulPartitionedCallН
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_22665block5_conv2_22667*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_221482&
$block5_conv2/StatefulPartitionedCallН
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_22670block5_conv3_22672*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_221652&
$block5_conv3/StatefulPartitionedCallї
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_219332
block5_pool/PartitionedCallЧ
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
У
`
'__inference_dropout_layer_call_fn_24118

inputs
identityѕбStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_229692
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ъ
┌
E__inference_sequential_layer_call_and_return_conditional_losses_22851

inputs%
vgg16_22758:@
vgg16_22760:@%
vgg16_22762:@@
vgg16_22764:@&
vgg16_22766:@ђ
vgg16_22768:	ђ'
vgg16_22770:ђђ
vgg16_22772:	ђ'
vgg16_22774:ђђ
vgg16_22776:	ђ'
vgg16_22778:ђђ
vgg16_22780:	ђ'
vgg16_22782:ђђ
vgg16_22784:	ђ'
vgg16_22786:ђђ
vgg16_22788:	ђ'
vgg16_22790:ђђ
vgg16_22792:	ђ'
vgg16_22794:ђђ
vgg16_22796:	ђ'
vgg16_22798:ђђ
vgg16_22800:	ђ'
vgg16_22802:ђђ
vgg16_22804:	ђ'
vgg16_22806:ђђ
vgg16_22808:	ђ
dense_22845:
ђ─
dense_22847:
identityѕбdense/StatefulPartitionedCallбvgg16/StatefulPartitionedCallз
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputsvgg16_22758vgg16_22760vgg16_22762vgg16_22764vgg16_22766vgg16_22768vgg16_22770vgg16_22772vgg16_22774vgg16_22776vgg16_22778vgg16_22780vgg16_22782vgg16_22784vgg16_22786vgg16_22788vgg16_22790vgg16_22792vgg16_22794vgg16_22796vgg16_22798vgg16_22800vgg16_22802vgg16_22804vgg16_22806vgg16_22808*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_221732
vgg16/StatefulPartitionedCallщ
dropout/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_228162
dropout/PartitionedCallВ
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_228242
flatten/PartitionedCallЫ
dropout_1/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_228312
dropout_1/PartitionedCallъ
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_22845dense_22847*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_228442
dense/StatefulPartitionedCall║
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block4_conv2_layer_call_and_return_conditional_losses_24347

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
л
ц
,__inference_block5_conv2_layer_call_fn_24416

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_221482
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
─
E
)__inference_dropout_1_layer_call_fn_24151

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_228312
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         ђ─2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђ─:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
л
ц
,__inference_block4_conv3_layer_call_fn_24376

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_221132
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
АP
╣
__inference__traced_save_24582
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameИ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*╩
value└Bй*B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names▄
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЇ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*╣
_input_shapesД
ц: :
ђ─:: : : : : :@:@:@@:@:@ђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ: : : : :
ђ─::
ђ─:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
ђ─: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 	

_output_shapes
:@:,
(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@ђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:. *
(
_output_shapes
:ђђ:!!

_output_shapes	
:ђ:"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&&"
 
_output_shapes
:
ђ─: '

_output_shapes
::&("
 
_output_shapes
:
ђ─: )

_output_shapes
::*

_output_shapes
: 
л
b
)__inference_dropout_1_layer_call_fn_24156

inputs
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_229402
StatefulPartitionedCallљ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*)
_output_shapes
:         ђ─2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђ─22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block5_conv2_layer_call_and_return_conditional_losses_24407

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ё
Ь
#__inference_signature_wrapper_23419
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ%
	unknown_9:ђђ

unknown_10:	ђ&

unknown_11:ђђ

unknown_12:	ђ&

unknown_13:ђђ

unknown_14:	ђ&

unknown_15:ђђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ&

unknown_19:ђђ

unknown_20:	ђ&

unknown_21:ђђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ

unknown_25:
ђ─

unknown_26:
identityѕбStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_218792
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:         ­­
%
_user_specified_namevgg16_input
Б
Ѓ
G__inference_block3_conv2_layer_call_and_return_conditional_losses_24287

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         <<ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         <<ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         <<ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         <<ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         <<ђ
 
_user_specified_nameinputs
Б
Ѓ
G__inference_block5_conv3_layer_call_and_return_conditional_losses_24427

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*║
serving_defaultд
M
vgg16_input>
serving_default_vgg16_input:0         ­­9
dense0
StatefulPartitionedCall:0         tensorflow/serving/predict:»┴
вп
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
trainable_variables
regularization_losses
		variables

	keras_api

signatures
Б_default_save_signature
+ц&call_and_return_all_conditional_losses
Ц__call__"До
_tf_keras_sequentialЄо{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "vgg16_input"}}, {"class_name": "Functional", "config": {"name": "vgg16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 53, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 240, 240, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 240, 240, 3]}, "float32", "vgg16_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "vgg16_input"}, "shared_object_id": 0}, {"class_name": "Functional", "config": {"name": "vgg16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "shared_object_id": 46}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 47}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 48}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 49}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 52}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 55}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
п═
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
trainable_variables
 regularization_losses
!	variables
"	keras_api
+д&call_and_return_all_conditional_losses
Д__call__"ыК
_tf_keras_networkнК{"name": "vgg16", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "vgg16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "shared_object_id": 46, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 240, 240, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 240, 240, 3]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "vgg16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]], "shared_object_id": 31}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]], "shared_object_id": 34}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]], "shared_object_id": 35}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 36}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]], "shared_object_id": 38}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 39}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 40}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]], "shared_object_id": 41}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]], "shared_object_id": 44}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]], "shared_object_id": 45}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}}}
ч
#trainable_variables
$regularization_losses
%	variables
&	keras_api
+е&call_and_return_all_conditional_losses
Е__call__"Ж
_tf_keras_layerл{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 47}
ћ
'trainable_variables
(regularization_losses
)	variables
*	keras_api
+ф&call_and_return_all_conditional_losses
Ф__call__"Ѓ
_tf_keras_layerж{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 48, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 57}}
 
+trainable_variables
,regularization_losses
-	variables
.	keras_api
+г&call_and_return_all_conditional_losses
Г__call__"Ь
_tf_keras_layerн{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 49}
о

/kernel
0bias
1trainable_variables
2regularization_losses
3	variables
4	keras_api
+«&call_and_return_all_conditional_losses
»__call__"»
_tf_keras_layerЋ{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 52, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 25088}}, "shared_object_id": 58}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25088]}}
{
5iter

6beta_1

7beta_2
	8decay
9learning_rate/mЪ0mа/vА0vб"
	optimizer
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
Ш
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25
/26
027"
trackable_list_wrapper
╬

Tlayers
Umetrics
trainable_variables
Vlayer_metrics
regularization_losses
Wlayer_regularization_losses
Xnon_trainable_variables
		variables
Ц__call__
Б_default_save_signature
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
-
░serving_default"
signature_map
§"Щ
_tf_keras_input_layer┌{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
Є

:kernel
;bias
Ytrainable_variables
Zregularization_losses
[	variables
\	keras_api
+▒&call_and_return_all_conditional_losses
▓__call__"Я	
_tf_keras_layerк	{"name": "block1_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 59}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 240, 240, 3]}}
ј

<kernel
=bias
]trainable_variables
^regularization_losses
_	variables
`	keras_api
+│&call_and_return_all_conditional_losses
┤__call__"у	
_tf_keras_layer═	{"name": "block1_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block1_conv1", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 60}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 240, 240, 64]}}
█
atrainable_variables
bregularization_losses
c	variables
d	keras_api
+х&call_and_return_all_conditional_losses
Х__call__"╩
_tf_keras_layer░{"name": "block1_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block1_conv2", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 61}}
љ

>kernel
?bias
etrainable_variables
fregularization_losses
g	variables
h	keras_api
+и&call_and_return_all_conditional_losses
И__call__"ж	
_tf_keras_layer¤	{"name": "block2_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block1_pool", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 62}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 120, 120, 64]}}
ћ

@kernel
Abias
itrainable_variables
jregularization_losses
k	variables
l	keras_api
+╣&call_and_return_all_conditional_losses
║__call__"ь	
_tf_keras_layerМ	{"name": "block2_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block2_conv1", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 63}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 120, 120, 128]}}
▄
mtrainable_variables
nregularization_losses
o	variables
p	keras_api
+╗&call_and_return_all_conditional_losses
╝__call__"╦
_tf_keras_layer▒{"name": "block2_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block2_conv2", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 64}}
Љ

Bkernel
Cbias
qtrainable_variables
rregularization_losses
s	variables
t	keras_api
+й&call_and_return_all_conditional_losses
Й__call__"Ж	
_tf_keras_layerл	{"name": "block3_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block2_pool", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 65}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 60, 128]}}
њ

Dkernel
Ebias
utrainable_variables
vregularization_losses
w	variables
x	keras_api
+┐&call_and_return_all_conditional_losses
└__call__"в	
_tf_keras_layerЛ	{"name": "block3_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_conv1", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 60, 256]}}
њ

Fkernel
Gbias
ytrainable_variables
zregularization_losses
{	variables
|	keras_api
+┴&call_and_return_all_conditional_losses
┬__call__"в	
_tf_keras_layerЛ	{"name": "block3_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_conv2", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 67}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 60, 256]}}
П
}trainable_variables
~regularization_losses
	variables
ђ	keras_api
+├&call_and_return_all_conditional_losses
─__call__"╦
_tf_keras_layer▒{"name": "block3_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block3_conv3", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 68}}
Ћ

Hkernel
Ibias
Ђtrainable_variables
ѓregularization_losses
Ѓ	variables
ё	keras_api
+┼&call_and_return_all_conditional_losses
к__call__"Ж	
_tf_keras_layerл	{"name": "block4_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block3_pool", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 69}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 256]}}
ќ

Jkernel
Kbias
Ёtrainable_variables
єregularization_losses
Є	variables
ѕ	keras_api
+К&call_and_return_all_conditional_losses
╚__call__"в	
_tf_keras_layerЛ	{"name": "block4_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_conv1", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 70}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 512]}}
ќ

Lkernel
Mbias
Ѕtrainable_variables
іregularization_losses
І	variables
ї	keras_api
+╔&call_and_return_all_conditional_losses
╩__call__"в	
_tf_keras_layerЛ	{"name": "block4_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_conv2", 0, 0, {}]]], "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 71}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 512]}}
Я
Їtrainable_variables
јregularization_losses
Ј	variables
љ	keras_api
+╦&call_and_return_all_conditional_losses
╠__call__"╦
_tf_keras_layer▒{"name": "block4_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block4_conv3", 0, 0, {}]]], "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 72}}
Ћ

Nkernel
Obias
Љtrainable_variables
њregularization_losses
Њ	variables
ћ	keras_api
+═&call_and_return_all_conditional_losses
╬__call__"Ж	
_tf_keras_layerл	{"name": "block5_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 36}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block4_pool", 0, 0, {}]]], "shared_object_id": 38, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 73}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 512]}}
ќ

Pkernel
Qbias
Ћtrainable_variables
ќregularization_losses
Ќ	variables
ў	keras_api
+¤&call_and_return_all_conditional_losses
л__call__"в	
_tf_keras_layerЛ	{"name": "block5_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 39}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 40}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block5_conv1", 0, 0, {}]]], "shared_object_id": 41, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 74}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 512]}}
ќ

Rkernel
Sbias
Ўtrainable_variables
џregularization_losses
Џ	variables
ю	keras_api
+Л&call_and_return_all_conditional_losses
м__call__"в	
_tf_keras_layerЛ	{"name": "block5_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 42}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["block5_conv2", 0, 0, {}]]], "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}, "shared_object_id": 75}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 512]}}
Я
Юtrainable_variables
ъregularization_losses
Ъ	variables
а	keras_api
+М&call_and_return_all_conditional_losses
н__call__"╦
_tf_keras_layer▒{"name": "block5_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["block5_conv3", 0, 0, {}]]], "shared_object_id": 45, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 76}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Т
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25"
trackable_list_wrapper
х
Аlayers
бmetrics
trainable_variables
Бlayer_metrics
 regularization_losses
 цlayer_regularization_losses
Цnon_trainable_variables
!	variables
Д__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
дlayers
Дmetrics
еlayer_metrics
#trainable_variables
$regularization_losses
 Еlayer_regularization_losses
фnon_trainable_variables
%	variables
Е__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Фlayers
гmetrics
Гlayer_metrics
'trainable_variables
(regularization_losses
 «layer_regularization_losses
»non_trainable_variables
)	variables
Ф__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
░layers
▒metrics
▓layer_metrics
+trainable_variables
,regularization_losses
 │layer_regularization_losses
┤non_trainable_variables
-	variables
Г__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
 :
ђ─2dense/kernel
:2
dense/bias
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
х
хlayers
Хmetrics
иlayer_metrics
1trainable_variables
2regularization_losses
 Иlayer_regularization_losses
╣non_trainable_variables
3	variables
»__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@ђ2block2_conv1/kernel
 :ђ2block2_conv1/bias
/:-ђђ2block2_conv2/kernel
 :ђ2block2_conv2/bias
/:-ђђ2block3_conv1/kernel
 :ђ2block3_conv1/bias
/:-ђђ2block3_conv2/kernel
 :ђ2block3_conv2/bias
/:-ђђ2block3_conv3/kernel
 :ђ2block3_conv3/bias
/:-ђђ2block4_conv1/kernel
 :ђ2block4_conv1/bias
/:-ђђ2block4_conv2/kernel
 :ђ2block4_conv2/bias
/:-ђђ2block4_conv3/kernel
 :ђ2block4_conv3/bias
/:-ђђ2block5_conv1/kernel
 :ђ2block5_conv1/bias
/:-ђђ2block5_conv2/kernel
 :ђ2block5_conv2/bias
/:-ђђ2block5_conv3/kernel
 :ђ2block5_conv3/bias
C
0
1
2
3
4"
trackable_list_wrapper
0
║0
╗1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
Т
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
х
╝layers
йmetrics
Йlayer_metrics
Ytrainable_variables
Zregularization_losses
 ┐layer_regularization_losses
└non_trainable_variables
[	variables
▓__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
х
┴layers
┬metrics
├layer_metrics
]trainable_variables
^regularization_losses
 ─layer_regularization_losses
┼non_trainable_variables
_	variables
┤__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
кlayers
Кmetrics
╚layer_metrics
atrainable_variables
bregularization_losses
 ╔layer_regularization_losses
╩non_trainable_variables
c	variables
Х__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
х
╦layers
╠metrics
═layer_metrics
etrainable_variables
fregularization_losses
 ╬layer_regularization_losses
¤non_trainable_variables
g	variables
И__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
х
лlayers
Лmetrics
мlayer_metrics
itrainable_variables
jregularization_losses
 Мlayer_regularization_losses
нnon_trainable_variables
k	variables
║__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Нlayers
оmetrics
Оlayer_metrics
mtrainable_variables
nregularization_losses
 пlayer_regularization_losses
┘non_trainable_variables
o	variables
╝__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
х
┌layers
█metrics
▄layer_metrics
qtrainable_variables
rregularization_losses
 Пlayer_regularization_losses
яnon_trainable_variables
s	variables
Й__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
х
▀layers
Яmetrics
рlayer_metrics
utrainable_variables
vregularization_losses
 Рlayer_regularization_losses
сnon_trainable_variables
w	variables
└__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
х
Сlayers
тmetrics
Тlayer_metrics
ytrainable_variables
zregularization_losses
 уlayer_regularization_losses
Уnon_trainable_variables
{	variables
┬__call__
+┴&call_and_return_all_conditional_losses
'┴"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
жlayers
Жmetrics
вlayer_metrics
}trainable_variables
~regularization_losses
 Вlayer_regularization_losses
ьnon_trainable_variables
	variables
─__call__
+├&call_and_return_all_conditional_losses
'├"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
И
Ьlayers
№metrics
­layer_metrics
Ђtrainable_variables
ѓregularization_losses
 ыlayer_regularization_losses
Ыnon_trainable_variables
Ѓ	variables
к__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
И
зlayers
Зmetrics
шlayer_metrics
Ёtrainable_variables
єregularization_losses
 Шlayer_regularization_losses
эnon_trainable_variables
Є	variables
╚__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
И
Эlayers
щmetrics
Щlayer_metrics
Ѕtrainable_variables
іregularization_losses
 чlayer_regularization_losses
Чnon_trainable_variables
І	variables
╩__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
§layers
■metrics
 layer_metrics
Їtrainable_variables
јregularization_losses
 ђlayer_regularization_losses
Ђnon_trainable_variables
Ј	variables
╠__call__
+╦&call_and_return_all_conditional_losses
'╦"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
И
ѓlayers
Ѓmetrics
ёlayer_metrics
Љtrainable_variables
њregularization_losses
 Ёlayer_regularization_losses
єnon_trainable_variables
Њ	variables
╬__call__
+═&call_and_return_all_conditional_losses
'═"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
И
Єlayers
ѕmetrics
Ѕlayer_metrics
Ћtrainable_variables
ќregularization_losses
 іlayer_regularization_losses
Іnon_trainable_variables
Ќ	variables
л__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
И
їlayers
Їmetrics
јlayer_metrics
Ўtrainable_variables
џregularization_losses
 Јlayer_regularization_losses
љnon_trainable_variables
Џ	variables
м__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Љlayers
њmetrics
Њlayer_metrics
Юtrainable_variables
ъregularization_losses
 ћlayer_regularization_losses
Ћnon_trainable_variables
Ъ	variables
н__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
«
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
Т
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
L18
M19
N20
O21
P22
Q23
R24
S25"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
п

ќtotal

Ќcount
ў	variables
Ў	keras_api"Ю
_tf_keras_metricѓ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 77}
Ќ

џtotal

Џcount
ю
_fn_kwargs
Ю	variables
ъ	keras_api"╦
_tf_keras_metric░{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 55}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
ќ0
Ќ1"
trackable_list_wrapper
.
ў	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
џ0
Џ1"
trackable_list_wrapper
.
Ю	variables"
_generic_user_object
%:#
ђ─2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#
ђ─2Adam/dense/kernel/v
:2Adam/dense/bias/v
В2ж
 __inference__wrapped_model_21879─
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *4б1
/і,
vgg16_input         ­­
Р2▀
E__inference_sequential_layer_call_and_return_conditional_losses_23530
E__inference_sequential_layer_call_and_return_conditional_losses_23655
E__inference_sequential_layer_call_and_return_conditional_losses_23285
E__inference_sequential_layer_call_and_return_conditional_losses_23350└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ш2з
*__inference_sequential_layer_call_fn_22910
*__inference_sequential_layer_call_fn_23716
*__inference_sequential_layer_call_fn_23777
*__inference_sequential_layer_call_fn_23220└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╬2╦
@__inference_vgg16_layer_call_and_return_conditional_losses_23877
@__inference_vgg16_layer_call_and_return_conditional_losses_23977
@__inference_vgg16_layer_call_and_return_conditional_losses_22677
@__inference_vgg16_layer_call_and_return_conditional_losses_22751└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Р2▀
%__inference_vgg16_layer_call_fn_22228
%__inference_vgg16_layer_call_fn_24034
%__inference_vgg16_layer_call_fn_24091
%__inference_vgg16_layer_call_fn_22603└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
┬2┐
B__inference_dropout_layer_call_and_return_conditional_losses_24096
B__inference_dropout_layer_call_and_return_conditional_losses_24108┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ї2Ѕ
'__inference_dropout_layer_call_fn_24113
'__inference_dropout_layer_call_fn_24118┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
В2ж
B__inference_flatten_layer_call_and_return_conditional_losses_24124б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Л2╬
'__inference_flatten_layer_call_fn_24129б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
к2├
D__inference_dropout_1_layer_call_and_return_conditional_losses_24134
D__inference_dropout_1_layer_call_and_return_conditional_losses_24146┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
љ2Ї
)__inference_dropout_1_layer_call_fn_24151
)__inference_dropout_1_layer_call_fn_24156┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ж2у
@__inference_dense_layer_call_and_return_conditional_losses_24167б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
¤2╠
%__inference_dense_layer_call_fn_24176б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╬B╦
#__inference_signature_wrapper_23419vgg16_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_block1_conv1_layer_call_and_return_conditional_losses_24187б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block1_conv1_layer_call_fn_24196б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_block1_conv2_layer_call_and_return_conditional_losses_24207б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block1_conv2_layer_call_fn_24216б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
«2Ф
F__inference_block1_pool_layer_call_and_return_conditional_losses_21885Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
Њ2љ
+__inference_block1_pool_layer_call_fn_21891Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
ы2Ь
G__inference_block2_conv1_layer_call_and_return_conditional_losses_24227б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block2_conv1_layer_call_fn_24236б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_block2_conv2_layer_call_and_return_conditional_losses_24247б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block2_conv2_layer_call_fn_24256б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
«2Ф
F__inference_block2_pool_layer_call_and_return_conditional_losses_21897Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
Њ2љ
+__inference_block2_pool_layer_call_fn_21903Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
ы2Ь
G__inference_block3_conv1_layer_call_and_return_conditional_losses_24267б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block3_conv1_layer_call_fn_24276б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_block3_conv2_layer_call_and_return_conditional_losses_24287б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block3_conv2_layer_call_fn_24296б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_block3_conv3_layer_call_and_return_conditional_losses_24307б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block3_conv3_layer_call_fn_24316б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
«2Ф
F__inference_block3_pool_layer_call_and_return_conditional_losses_21909Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
Њ2љ
+__inference_block3_pool_layer_call_fn_21915Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
ы2Ь
G__inference_block4_conv1_layer_call_and_return_conditional_losses_24327б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block4_conv1_layer_call_fn_24336б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_block4_conv2_layer_call_and_return_conditional_losses_24347б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block4_conv2_layer_call_fn_24356б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_block4_conv3_layer_call_and_return_conditional_losses_24367б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block4_conv3_layer_call_fn_24376б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
«2Ф
F__inference_block4_pool_layer_call_and_return_conditional_losses_21921Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
Њ2љ
+__inference_block4_pool_layer_call_fn_21927Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
ы2Ь
G__inference_block5_conv1_layer_call_and_return_conditional_losses_24387б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block5_conv1_layer_call_fn_24396б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_block5_conv2_layer_call_and_return_conditional_losses_24407б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block5_conv2_layer_call_fn_24416б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_block5_conv3_layer_call_and_return_conditional_losses_24427б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_block5_conv3_layer_call_fn_24436б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
«2Ф
F__inference_block5_pool_layer_call_and_return_conditional_losses_21933Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
Њ2љ
+__inference_block5_pool_layer_call_fn_21939Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    ▓
 __inference__wrapped_model_21879Ї:;<=>?@ABCDEFGHIJKLMNOPQRS/0>б;
4б1
/і,
vgg16_input         ­­
ф "-ф*
(
denseі
dense         ╗
G__inference_block1_conv1_layer_call_and_return_conditional_losses_24187p:;9б6
/б,
*і'
inputs         ­­
ф "/б,
%і"
0         ­­@
џ Њ
,__inference_block1_conv1_layer_call_fn_24196c:;9б6
/б,
*і'
inputs         ­­
ф ""і         ­­@╗
G__inference_block1_conv2_layer_call_and_return_conditional_losses_24207p<=9б6
/б,
*і'
inputs         ­­@
ф "/б,
%і"
0         ­­@
џ Њ
,__inference_block1_conv2_layer_call_fn_24216c<=9б6
/б,
*і'
inputs         ­­@
ф ""і         ­­@ж
F__inference_block1_pool_layer_call_and_return_conditional_losses_21885ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ┴
+__inference_block1_pool_layer_call_fn_21891ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    И
G__inference_block2_conv1_layer_call_and_return_conditional_losses_24227m>?7б4
-б*
(і%
inputs         xx@
ф ".б+
$і!
0         xxђ
џ љ
,__inference_block2_conv1_layer_call_fn_24236`>?7б4
-б*
(і%
inputs         xx@
ф "!і         xxђ╣
G__inference_block2_conv2_layer_call_and_return_conditional_losses_24247n@A8б5
.б+
)і&
inputs         xxђ
ф ".б+
$і!
0         xxђ
џ Љ
,__inference_block2_conv2_layer_call_fn_24256a@A8б5
.б+
)і&
inputs         xxђ
ф "!і         xxђж
F__inference_block2_pool_layer_call_and_return_conditional_losses_21897ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ┴
+__inference_block2_pool_layer_call_fn_21903ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ╣
G__inference_block3_conv1_layer_call_and_return_conditional_losses_24267nBC8б5
.б+
)і&
inputs         <<ђ
ф ".б+
$і!
0         <<ђ
џ Љ
,__inference_block3_conv1_layer_call_fn_24276aBC8б5
.б+
)і&
inputs         <<ђ
ф "!і         <<ђ╣
G__inference_block3_conv2_layer_call_and_return_conditional_losses_24287nDE8б5
.б+
)і&
inputs         <<ђ
ф ".б+
$і!
0         <<ђ
џ Љ
,__inference_block3_conv2_layer_call_fn_24296aDE8б5
.б+
)і&
inputs         <<ђ
ф "!і         <<ђ╣
G__inference_block3_conv3_layer_call_and_return_conditional_losses_24307nFG8б5
.б+
)і&
inputs         <<ђ
ф ".б+
$і!
0         <<ђ
џ Љ
,__inference_block3_conv3_layer_call_fn_24316aFG8б5
.б+
)і&
inputs         <<ђ
ф "!і         <<ђж
F__inference_block3_pool_layer_call_and_return_conditional_losses_21909ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ┴
+__inference_block3_pool_layer_call_fn_21915ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ╣
G__inference_block4_conv1_layer_call_and_return_conditional_losses_24327nHI8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ Љ
,__inference_block4_conv1_layer_call_fn_24336aHI8б5
.б+
)і&
inputs         ђ
ф "!і         ђ╣
G__inference_block4_conv2_layer_call_and_return_conditional_losses_24347nJK8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ Љ
,__inference_block4_conv2_layer_call_fn_24356aJK8б5
.б+
)і&
inputs         ђ
ф "!і         ђ╣
G__inference_block4_conv3_layer_call_and_return_conditional_losses_24367nLM8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ Љ
,__inference_block4_conv3_layer_call_fn_24376aLM8б5
.б+
)і&
inputs         ђ
ф "!і         ђж
F__inference_block4_pool_layer_call_and_return_conditional_losses_21921ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ┴
+__inference_block4_pool_layer_call_fn_21927ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ╣
G__inference_block5_conv1_layer_call_and_return_conditional_losses_24387nNO8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ Љ
,__inference_block5_conv1_layer_call_fn_24396aNO8б5
.б+
)і&
inputs         ђ
ф "!і         ђ╣
G__inference_block5_conv2_layer_call_and_return_conditional_losses_24407nPQ8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ Љ
,__inference_block5_conv2_layer_call_fn_24416aPQ8б5
.б+
)і&
inputs         ђ
ф "!і         ђ╣
G__inference_block5_conv3_layer_call_and_return_conditional_losses_24427nRS8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ Љ
,__inference_block5_conv3_layer_call_fn_24436aRS8б5
.б+
)і&
inputs         ђ
ф "!і         ђж
F__inference_block5_pool_layer_call_and_return_conditional_losses_21933ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ┴
+__inference_block5_pool_layer_call_fn_21939ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    б
@__inference_dense_layer_call_and_return_conditional_losses_24167^/01б.
'б$
"і
inputs         ђ─
ф "%б"
і
0         
џ z
%__inference_dense_layer_call_fn_24176Q/01б.
'б$
"і
inputs         ђ─
ф "і         е
D__inference_dropout_1_layer_call_and_return_conditional_losses_24134`5б2
+б(
"і
inputs         ђ─
p 
ф "'б$
і
0         ђ─
џ е
D__inference_dropout_1_layer_call_and_return_conditional_losses_24146`5б2
+б(
"і
inputs         ђ─
p
ф "'б$
і
0         ђ─
џ ђ
)__inference_dropout_1_layer_call_fn_24151S5б2
+б(
"і
inputs         ђ─
p 
ф "і         ђ─ђ
)__inference_dropout_1_layer_call_fn_24156S5б2
+б(
"і
inputs         ђ─
p
ф "і         ђ─┤
B__inference_dropout_layer_call_and_return_conditional_losses_24096n<б9
2б/
)і&
inputs         ђ
p 
ф ".б+
$і!
0         ђ
џ ┤
B__inference_dropout_layer_call_and_return_conditional_losses_24108n<б9
2б/
)і&
inputs         ђ
p
ф ".б+
$і!
0         ђ
џ ї
'__inference_dropout_layer_call_fn_24113a<б9
2б/
)і&
inputs         ђ
p 
ф "!і         ђї
'__inference_dropout_layer_call_fn_24118a<б9
2б/
)і&
inputs         ђ
p
ф "!і         ђЕ
B__inference_flatten_layer_call_and_return_conditional_losses_24124c8б5
.б+
)і&
inputs         ђ
ф "'б$
і
0         ђ─
џ Ђ
'__inference_flatten_layer_call_fn_24129V8б5
.б+
)і&
inputs         ђ
ф "і         ђ─О
E__inference_sequential_layer_call_and_return_conditional_losses_23285Ї:;<=>?@ABCDEFGHIJKLMNOPQRS/0FбC
<б9
/і,
vgg16_input         ­­
p 

 
ф "%б"
і
0         
џ О
E__inference_sequential_layer_call_and_return_conditional_losses_23350Ї:;<=>?@ABCDEFGHIJKLMNOPQRS/0FбC
<б9
/і,
vgg16_input         ­­
p

 
ф "%б"
і
0         
џ м
E__inference_sequential_layer_call_and_return_conditional_losses_23530ѕ:;<=>?@ABCDEFGHIJKLMNOPQRS/0Aб>
7б4
*і'
inputs         ­­
p 

 
ф "%б"
і
0         
џ м
E__inference_sequential_layer_call_and_return_conditional_losses_23655ѕ:;<=>?@ABCDEFGHIJKLMNOPQRS/0Aб>
7б4
*і'
inputs         ­­
p

 
ф "%б"
і
0         
џ »
*__inference_sequential_layer_call_fn_22910ђ:;<=>?@ABCDEFGHIJKLMNOPQRS/0FбC
<б9
/і,
vgg16_input         ­­
p 

 
ф "і         »
*__inference_sequential_layer_call_fn_23220ђ:;<=>?@ABCDEFGHIJKLMNOPQRS/0FбC
<б9
/і,
vgg16_input         ­­
p

 
ф "і         Е
*__inference_sequential_layer_call_fn_23716{:;<=>?@ABCDEFGHIJKLMNOPQRS/0Aб>
7б4
*і'
inputs         ­­
p 

 
ф "і         Е
*__inference_sequential_layer_call_fn_23777{:;<=>?@ABCDEFGHIJKLMNOPQRS/0Aб>
7б4
*і'
inputs         ­­
p

 
ф "і         ─
#__inference_signature_wrapper_23419ю:;<=>?@ABCDEFGHIJKLMNOPQRS/0MбJ
б 
Cф@
>
vgg16_input/і,
vgg16_input         ­­"-ф*
(
denseі
dense         Н
@__inference_vgg16_layer_call_and_return_conditional_losses_22677љ:;<=>?@ABCDEFGHIJKLMNOPQRSBб?
8б5
+і(
input_1         ­­
p 

 
ф ".б+
$і!
0         ђ
џ Н
@__inference_vgg16_layer_call_and_return_conditional_losses_22751љ:;<=>?@ABCDEFGHIJKLMNOPQRSBб?
8б5
+і(
input_1         ­­
p

 
ф ".б+
$і!
0         ђ
џ н
@__inference_vgg16_layer_call_and_return_conditional_losses_23877Ј:;<=>?@ABCDEFGHIJKLMNOPQRSAб>
7б4
*і'
inputs         ­­
p 

 
ф ".б+
$і!
0         ђ
џ н
@__inference_vgg16_layer_call_and_return_conditional_losses_23977Ј:;<=>?@ABCDEFGHIJKLMNOPQRSAб>
7б4
*і'
inputs         ­­
p

 
ф ".б+
$і!
0         ђ
џ Г
%__inference_vgg16_layer_call_fn_22228Ѓ:;<=>?@ABCDEFGHIJKLMNOPQRSBб?
8б5
+і(
input_1         ­­
p 

 
ф "!і         ђГ
%__inference_vgg16_layer_call_fn_22603Ѓ:;<=>?@ABCDEFGHIJKLMNOPQRSBб?
8б5
+і(
input_1         ­­
p

 
ф "!і         ђг
%__inference_vgg16_layer_call_fn_24034ѓ:;<=>?@ABCDEFGHIJKLMNOPQRSAб>
7б4
*і'
inputs         ­­
p 

 
ф "!і         ђг
%__inference_vgg16_layer_call_fn_24091ѓ:;<=>?@ABCDEFGHIJKLMNOPQRSAб>
7б4
*і'
inputs         ­­
p

 
ф "!і         ђ