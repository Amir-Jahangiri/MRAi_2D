зд
┬д
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
а
BatchToSpaceND

input"T
block_shape"Tblock_shape
crops"Tcrops
output"T"	
Ttype" 
Tblock_shapetype0:
2	"
Tcropstype0:
2	
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Е
SpaceToBatchND

input"T
block_shape"Tblock_shape
paddings"	Tpaddings
output"T"	
Ttype" 
Tblock_shapetype0:
2	"
	Tpaddingstype0:
2	
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
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
 ѕ"serve*2.4.12unknown8Ї╗
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:*
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
ї
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/m
Ё
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:*
dtype0
љ
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_1/kernel/m
Ѕ
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:*
dtype0
љ
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_2/kernel/m
Ѕ
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:*
dtype0
љ
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/m
Ѕ
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/m
y
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes
:*
dtype0
љ
Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_4/kernel/m
Ѕ
*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_4/bias/m
y
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes
:*
dtype0
љ
Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_5/kernel/m
Ѕ
*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_5/bias/m
y
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes
:*
dtype0
љ
Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_6/kernel/m
Ѕ
*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_6/bias/m
y
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m*
_output_shapes
:*
dtype0
љ
Adam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_7/kernel/m
Ѕ
*Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/m*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_7/bias/m
y
(Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/m*
_output_shapes
:*
dtype0
љ
Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_8/kernel/m
Ѕ
*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_8/bias/m
y
(Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/m*
_output_shapes
:*
dtype0
ї
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/v
Ё
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:*
dtype0
љ
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_1/kernel/v
Ѕ
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:*
dtype0
љ
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_2/kernel/v
Ѕ
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:*
dtype0
љ
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/v
Ѕ
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/v
y
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes
:*
dtype0
љ
Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_4/kernel/v
Ѕ
*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_4/bias/v
y
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes
:*
dtype0
љ
Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_5/kernel/v
Ѕ
*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_5/bias/v
y
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes
:*
dtype0
љ
Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_6/kernel/v
Ѕ
*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_6/bias/v
y
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v*
_output_shapes
:*
dtype0
љ
Adam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_7/kernel/v
Ѕ
*Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/v*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_7/bias/v
y
(Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/v*
_output_shapes
:*
dtype0
љ
Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_8/kernel/v
Ѕ
*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*&
_output_shapes
:*
dtype0
ђ
Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_8/bias/v
y
(Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ё`
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┐_
valueх_B▓_ BФ_
э
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer_with_weights-6
layer-15
layer-16
layer_with_weights-7
layer-17
layer-18
layer_with_weights-8
layer-19
layer-20
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 

	keras_api
R
trainable_variables
	variables
regularization_losses
 	keras_api
h

!kernel
"bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api

'	keras_api
h

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api

.	keras_api
h

/kernel
0bias
1trainable_variables
2	variables
3regularization_losses
4	keras_api

5	keras_api
h

6kernel
7bias
8trainable_variables
9	variables
:regularization_losses
;	keras_api

<	keras_api
h

=kernel
>bias
?trainable_variables
@	variables
Aregularization_losses
B	keras_api

C	keras_api
h

Dkernel
Ebias
Ftrainable_variables
G	variables
Hregularization_losses
I	keras_api

J	keras_api
h

Kkernel
Lbias
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api

Q	keras_api
h

Rkernel
Sbias
Ttrainable_variables
U	variables
Vregularization_losses
W	keras_api

X	keras_api
h

Ykernel
Zbias
[trainable_variables
\	variables
]regularization_losses
^	keras_api
R
_trainable_variables
`	variables
aregularization_losses
b	keras_api
е
citer

dbeta_1

ebeta_2
	fdecay
glearning_rate!mЕ"mф(mФ)mг/mГ0m«6m»7m░=m▒>m▓Dm│Em┤KmхLmХRmиSmИYm╣Zm║!v╗"v╝(vй)vЙ/v┐0v└6v┴7v┬=v├>v─Dv┼EvкKvКLv╚Rv╔Sv╩Yv╦Zv╠
є
!0
"1
(2
)3
/4
05
66
77
=8
>9
D10
E11
K12
L13
R14
S15
Y16
Z17
є
!0
"1
(2
)3
/4
05
66
77
=8
>9
D10
E11
K12
L13
R14
S15
Y16
Z17
 
Г
hlayer_metrics
ilayer_regularization_losses
trainable_variables
jmetrics
	variables

klayers
regularization_losses
lnon_trainable_variables
 
 
 
 
 
Г
mlayer_metrics
nlayer_regularization_losses
trainable_variables
ometrics
	variables

players
regularization_losses
qnon_trainable_variables
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1

!0
"1
 
Г
rlayer_metrics
slayer_regularization_losses
#trainable_variables
tmetrics
$	variables

ulayers
%regularization_losses
vnon_trainable_variables
 
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
Г
wlayer_metrics
xlayer_regularization_losses
*trainable_variables
ymetrics
+	variables

zlayers
,regularization_losses
{non_trainable_variables
 
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01

/0
01
 
«
|layer_metrics
}layer_regularization_losses
1trainable_variables
~metrics
2	variables

layers
3regularization_losses
ђnon_trainable_variables
 
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71

60
71
 
▓
Ђlayer_metrics
 ѓlayer_regularization_losses
8trainable_variables
Ѓmetrics
9	variables
ёlayers
:regularization_losses
Ёnon_trainable_variables
 
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

=0
>1
 
▓
єlayer_metrics
 Єlayer_regularization_losses
?trainable_variables
ѕmetrics
@	variables
Ѕlayers
Aregularization_losses
іnon_trainable_variables
 
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

D0
E1
 
▓
Іlayer_metrics
 їlayer_regularization_losses
Ftrainable_variables
Їmetrics
G	variables
јlayers
Hregularization_losses
Јnon_trainable_variables
 
[Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

K0
L1

K0
L1
 
▓
љlayer_metrics
 Љlayer_regularization_losses
Mtrainable_variables
њmetrics
N	variables
Њlayers
Oregularization_losses
ћnon_trainable_variables
 
[Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

R0
S1

R0
S1
 
▓
Ћlayer_metrics
 ќlayer_regularization_losses
Ttrainable_variables
Ќmetrics
U	variables
ўlayers
Vregularization_losses
Ўnon_trainable_variables
 
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

Y0
Z1

Y0
Z1
 
▓
џlayer_metrics
 Џlayer_regularization_losses
[trainable_variables
юmetrics
\	variables
Юlayers
]regularization_losses
ъnon_trainable_variables
 
 
 
▓
Ъlayer_metrics
 аlayer_regularization_losses
_trainable_variables
Аmetrics
`	variables
бlayers
aregularization_losses
Бnon_trainable_variables
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
 
 

ц0
ъ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
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

Цtotal

дcount
Д	variables
е	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Ц0
д1

Д	variables
|z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_5/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_5/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_6/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_6/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_7/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_7/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_5/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_5/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_6/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_6/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_7/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_7/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ё
serving_default_input_1Placeholder*,
_output_shapes
:          *
dtype0*!
shape:          
Ч
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          *4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ */
f*R(
&__inference_signature_wrapper_11364376
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
─
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp(Adam/conv2d_7/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOp(Adam/conv2d_7/bias/v/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOpConst*J
TinC
A2?	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__traced_save_11365277
ч
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/mAdam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/conv2d_7/kernel/mAdam/conv2d_7/bias/mAdam/conv2d_8/kernel/mAdam/conv2d_8/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/vAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/conv2d_7/kernel/vAdam/conv2d_7/bias/vAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/v*I
TinB
@2>*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference__traced_restore_11365470У╣
С
▀
F__inference_conv2d_1_layer_call_and_return_conditional_losses_11364845

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"§     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsп
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*0
_output_shapes
:          2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpй
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ■*
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ч2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ч2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ч2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         §::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         §
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_2_layer_call_and_return_conditional_losses_11363804

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"ч     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ~*
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         э2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         э2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         э2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ч::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ч
 
_user_specified_nameinputs
ђ
З
(__inference_model_layer_call_fn_11364745

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityѕбStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          *4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_113641842
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:          
 
_user_specified_nameinputs
─ы
У
C__inference_model_layer_call_and_return_conditional_losses_11364704

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource+
'conv2d_5_conv2d_readvariableop_resource,
(conv2d_5_biasadd_readvariableop_resource+
'conv2d_6_conv2d_readvariableop_resource,
(conv2d_6_biasadd_readvariableop_resource+
'conv2d_7_conv2d_readvariableop_resource,
(conv2d_7_biasadd_readvariableop_resource+
'conv2d_8_conv2d_readvariableop_resource,
(conv2d_8_biasadd_readvariableop_resource
identityѕбconv2d/BiasAdd/ReadVariableOpбconv2d/Conv2D/ReadVariableOpбconv2d_1/BiasAdd/ReadVariableOpбconv2d_1/Conv2D/ReadVariableOpбconv2d_2/BiasAdd/ReadVariableOpбconv2d_2/Conv2D/ReadVariableOpбconv2d_3/BiasAdd/ReadVariableOpбconv2d_3/Conv2D/ReadVariableOpбconv2d_4/BiasAdd/ReadVariableOpбconv2d_4/Conv2D/ReadVariableOpбconv2d_5/BiasAdd/ReadVariableOpбconv2d_5/Conv2D/ReadVariableOpбconv2d_6/BiasAdd/ReadVariableOpбconv2d_6/Conv2D/ReadVariableOpбconv2d_7/BiasAdd/ReadVariableOpбconv2d_7/Conv2D/ReadVariableOpбconv2d_8/BiasAdd/ReadVariableOpбconv2d_8/Conv2D/ReadVariableOpp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axisа
tf.concat/concatConcatV2inputsinputstf.concat/concat/axis:output:0*
N*
T0*,
_output_shapes
:         ■2
tf.concat/concatg
reshape/ShapeShapetf.concat/concat:output:0*
T0*
_output_shapes
:2
reshape/Shapeё
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stackѕ
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1ѕ
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2њ
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_sliceu
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :■2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/3Ж
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shapeБ
reshape/ReshapeReshapetf.concat/concat:output:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         ■2
reshape/Reshapeф
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp╠
conv2d/Conv2DConv2Dreshape/Reshape:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         §*
paddingVALID*
strides
2
conv2d/Conv2DА
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOpЦ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         §2
conv2d/BiasAddљ
tf.nn.leaky_relu/LeakyRelu	LeakyReluconv2d/BiasAdd:output:0*0
_output_shapes
:         §2
tf.nn.leaky_relu/LeakyReluЈ
conv2d_1/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
conv2d_1/Conv2D/dilation_rate═
<conv2d_1/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"§     2>
<conv2d_1/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_1/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_1/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_1/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_1/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_1/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_1/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_1/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_1/Conv2D/SpaceToBatchND/block_shape│
'conv2d_1/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_1/Conv2D/SpaceToBatchND/paddingsъ
conv2d_1/Conv2D/SpaceToBatchNDSpaceToBatchND(tf.nn.leaky_relu/LeakyRelu:activations:03conv2d_1/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_1/Conv2D/SpaceToBatchND/paddings:output:0*
T0*0
_output_shapes
:          2 
conv2d_1/Conv2D/SpaceToBatchND░
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOpр
conv2d_1/Conv2DConv2D'conv2d_1/Conv2D/SpaceToBatchND:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ■*
paddingVALID*
strides
2
conv2d_1/Conv2DЕ
*conv2d_1/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_1/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_1/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_1/Conv2D/BatchToSpaceND/cropsІ
conv2d_1/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_1/Conv2D:output:03conv2d_1/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_1/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ч2 
conv2d_1/Conv2D/BatchToSpaceNDД
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp╝
conv2d_1/BiasAddBiasAdd'conv2d_1/Conv2D/BatchToSpaceND:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ч2
conv2d_1/BiasAddќ
tf.nn.leaky_relu_1/LeakyRelu	LeakyReluconv2d_1/BiasAdd:output:0*0
_output_shapes
:         ч2
tf.nn.leaky_relu_1/LeakyReluЈ
conv2d_2/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
conv2d_2/Conv2D/dilation_rate═
<conv2d_2/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"ч     2>
<conv2d_2/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_2/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_2/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_2/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_2/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_2/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_2/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_2/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_2/Conv2D/SpaceToBatchND/block_shape│
'conv2d_2/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_2/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_2/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_1/LeakyRelu:activations:03conv2d_2/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_2/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2 
conv2d_2/Conv2D/SpaceToBatchND░
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_2/Conv2D/ReadVariableOpЯ
conv2d_2/Conv2DConv2D'conv2d_2/Conv2D/SpaceToBatchND:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ~*
paddingVALID*
strides
2
conv2d_2/Conv2DЕ
*conv2d_2/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_2/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_2/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_2/Conv2D/BatchToSpaceND/cropsІ
conv2d_2/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_2/Conv2D:output:03conv2d_2/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_2/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         э2 
conv2d_2/Conv2D/BatchToSpaceNDД
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp╝
conv2d_2/BiasAddBiasAdd'conv2d_2/Conv2D/BatchToSpaceND:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         э2
conv2d_2/BiasAddќ
tf.nn.leaky_relu_2/LeakyRelu	LeakyReluconv2d_2/BiasAdd:output:0*0
_output_shapes
:         э2
tf.nn.leaky_relu_2/LeakyReluЈ
conv2d_3/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
conv2d_3/Conv2D/dilation_rate═
<conv2d_3/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"э     2>
<conv2d_3/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_3/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_3/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_3/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_3/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_3/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_3/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_3/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_3/Conv2D/SpaceToBatchND/block_shape│
'conv2d_3/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_3/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_3/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_2/LeakyRelu:activations:03conv2d_3/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_3/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         ?2 
conv2d_3/Conv2D/SpaceToBatchND░
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOpЯ
conv2d_3/Conv2DConv2D'conv2d_3/Conv2D/SpaceToBatchND:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >*
paddingVALID*
strides
2
conv2d_3/Conv2DЕ
*conv2d_3/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_3/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_3/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_3/Conv2D/BatchToSpaceND/cropsІ
conv2d_3/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_3/Conv2D:output:03conv2d_3/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_3/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         №2 
conv2d_3/Conv2D/BatchToSpaceNDД
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp╝
conv2d_3/BiasAddBiasAdd'conv2d_3/Conv2D/BatchToSpaceND:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         №2
conv2d_3/BiasAddќ
tf.nn.leaky_relu_3/LeakyRelu	LeakyReluconv2d_3/BiasAdd:output:0*0
_output_shapes
:         №2
tf.nn.leaky_relu_3/LeakyReluЈ
conv2d_4/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
conv2d_4/Conv2D/dilation_rate═
<conv2d_4/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"№     2>
<conv2d_4/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_4/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_4/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_4/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_4/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_4/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_4/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_4/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_4/Conv2D/SpaceToBatchND/block_shape│
'conv2d_4/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_4/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_4/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_3/LeakyRelu:activations:03conv2d_4/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_4/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2 
conv2d_4/Conv2D/SpaceToBatchND░
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_4/Conv2D/ReadVariableOpЯ
conv2d_4/Conv2DConv2D'conv2d_4/Conv2D/SpaceToBatchND:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
conv2d_4/Conv2DЕ
*conv2d_4/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_4/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_4/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_4/Conv2D/BatchToSpaceND/cropsІ
conv2d_4/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_4/Conv2D:output:03conv2d_4/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_4/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ▀2 
conv2d_4/Conv2D/BatchToSpaceNDД
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp╝
conv2d_4/BiasAddBiasAdd'conv2d_4/Conv2D/BatchToSpaceND:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ▀2
conv2d_4/BiasAddќ
tf.nn.leaky_relu_4/LeakyRelu	LeakyReluconv2d_4/BiasAdd:output:0*0
_output_shapes
:         ▀2
tf.nn.leaky_relu_4/LeakyReluЈ
conv2d_5/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"       2
conv2d_5/Conv2D/dilation_rate═
<conv2d_5/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"▀     2>
<conv2d_5/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_5/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_5/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_5/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_5/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_5/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_5/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_5/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*conv2d_5/Conv2D/SpaceToBatchND/block_shape│
'conv2d_5/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_5/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_5/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_4/LeakyRelu:activations:03conv2d_5/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_5/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2 
conv2d_5/Conv2D/SpaceToBatchND░
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_5/Conv2D/ReadVariableOpЯ
conv2d_5/Conv2DConv2D'conv2d_5/Conv2D/SpaceToBatchND:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
conv2d_5/Conv2DЕ
*conv2d_5/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*conv2d_5/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_5/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_5/Conv2D/BatchToSpaceND/cropsІ
conv2d_5/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_5/Conv2D:output:03conv2d_5/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_5/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ┐2 
conv2d_5/Conv2D/BatchToSpaceNDД
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp╝
conv2d_5/BiasAddBiasAdd'conv2d_5/Conv2D/BatchToSpaceND:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ┐2
conv2d_5/BiasAddќ
tf.nn.leaky_relu_5/LeakyRelu	LeakyReluconv2d_5/BiasAdd:output:0*0
_output_shapes
:         ┐2
tf.nn.leaky_relu_5/LeakyReluЈ
conv2d_6/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"@      2
conv2d_6/Conv2D/dilation_rate═
<conv2d_6/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"┐     2>
<conv2d_6/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_6/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_6/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_6/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_6/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_6/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_6/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_6/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"@      2,
*conv2d_6/Conv2D/SpaceToBatchND/block_shape│
'conv2d_6/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_6/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_6/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_5/LeakyRelu:activations:03conv2d_6/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_6/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2 
conv2d_6/Conv2D/SpaceToBatchND░
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_6/Conv2D/ReadVariableOpЯ
conv2d_6/Conv2DConv2D'conv2d_6/Conv2D/SpaceToBatchND:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
conv2d_6/Conv2DЕ
*conv2d_6/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"@      2,
*conv2d_6/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_6/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_6/Conv2D/BatchToSpaceND/cropsІ
conv2d_6/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_6/Conv2D:output:03conv2d_6/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_6/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:          2 
conv2d_6/Conv2D/BatchToSpaceNDД
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_6/BiasAdd/ReadVariableOp╝
conv2d_6/BiasAddBiasAdd'conv2d_6/Conv2D/BatchToSpaceND:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2
conv2d_6/BiasAddќ
tf.nn.leaky_relu_6/LeakyRelu	LeakyReluconv2d_6/BiasAdd:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_6/LeakyReluЈ
conv2d_7/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"ђ      2
conv2d_7/Conv2D/dilation_rate═
<conv2d_7/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"     2>
<conv2d_7/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_7/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_7/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_7/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_7/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_7/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_7/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_7/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      2,
*conv2d_7/Conv2D/SpaceToBatchND/block_shape│
'conv2d_7/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_7/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_7/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_6/LeakyRelu:activations:03conv2d_7/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_7/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2 
conv2d_7/Conv2D/SpaceToBatchND░
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_7/Conv2D/ReadVariableOpЯ
conv2d_7/Conv2DConv2D'conv2d_7/Conv2D/SpaceToBatchND:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
conv2d_7/Conv2DЕ
*conv2d_7/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      2,
*conv2d_7/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_7/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_7/Conv2D/BatchToSpaceND/cropsІ
conv2d_7/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_7/Conv2D:output:03conv2d_7/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_7/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:          2 
conv2d_7/Conv2D/BatchToSpaceNDД
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_7/BiasAdd/ReadVariableOp╝
conv2d_7/BiasAddBiasAdd'conv2d_7/Conv2D/BatchToSpaceND:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2
conv2d_7/BiasAddќ
tf.nn.leaky_relu_7/LeakyRelu	LeakyReluconv2d_7/BiasAdd:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_7/LeakyRelu░
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_8/Conv2D/ReadVariableOpС
conv2d_8/Conv2DConv2D*tf.nn.leaky_relu_7/LeakyRelu:activations:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_8/Conv2DД
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_8/BiasAdd/ReadVariableOpГ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2
conv2d_8/BiasAddk
reshape_1/ShapeShapeconv2d_8/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_1/Shapeѕ
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stackї
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1ї
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2ъ
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slicey
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B : 2
reshape_1/Reshape/shape/1x
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/2м
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shapeЦ
reshape_1/ReshapeReshapeconv2d_8/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:          2
reshape_1/Reshape╩
IdentityIdentityreshape_1/Reshape:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp:T P
,
_output_shapes
:          
 
_user_specified_nameinputs
з
a
E__inference_reshape_layer_call_and_return_conditional_losses_11364800

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :■2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3║
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:         ■2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:         ■2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ■:T P
,
_output_shapes
:         ■
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_7_layer_call_and_return_conditional_losses_11365025

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"ђ      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:          2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:          2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:          ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:          
 
_user_specified_nameinputs
ѕ
ђ
+__inference_conv2d_8_layer_call_fn_11365053

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_8_layer_call_and_return_conditional_losses_113640212
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:          2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:          ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:          
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_6_layer_call_and_return_conditional_losses_11364995

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"@      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"┐     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"@      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"@      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:          2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:          2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ┐::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ┐
 
_user_specified_nameinputs
ш
c
G__inference_reshape_1_layer_call_and_return_conditional_losses_11364050

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B : 2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2а
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:          2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*/
_input_shapes
:          :X T
0
_output_shapes
:          
 
_user_specified_nameinputs
ѕ
ђ
+__inference_conv2d_2_layer_call_fn_11364884

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         э*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_113638042
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         э2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ч::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ч
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_2_layer_call_and_return_conditional_losses_11364875

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"ч     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ~*
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         э2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         э2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         э2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ч::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ч
 
_user_specified_nameinputs
┴C
Х
C__inference_model_layer_call_and_return_conditional_losses_11364120
input_1
conv2d_11364065
conv2d_11364067
conv2d_1_11364071
conv2d_1_11364073
conv2d_2_11364077
conv2d_2_11364079
conv2d_3_11364083
conv2d_3_11364085
conv2d_4_11364089
conv2d_4_11364091
conv2d_5_11364095
conv2d_5_11364097
conv2d_6_11364101
conv2d_6_11364103
conv2d_7_11364107
conv2d_7_11364109
conv2d_8_11364113
conv2d_8_11364115
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallб conv2d_6/StatefulPartitionedCallб conv2d_7/StatefulPartitionedCallб conv2d_8/StatefulPartitionedCallp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axisб
tf.concat/concatConcatV2input_1input_1tf.concat/concat/axis:output:0*
N*
T0*,
_output_shapes
:         ■2
tf.concat/concatЫ
reshape/PartitionedCallPartitionedCalltf.concat/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ■* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_113637102
reshape/PartitionedCallХ
conv2d/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_11364065conv2d_11364067*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         §*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_113637282 
conv2d/StatefulPartitionedCallа
tf.nn.leaky_relu/LeakyRelu	LeakyRelu'conv2d/StatefulPartitionedCall:output:0*0
_output_shapes
:         §2
tf.nn.leaky_relu/LeakyRelu╚
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(tf.nn.leaky_relu/LeakyRelu:activations:0conv2d_1_11364071conv2d_1_11364073*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ч*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_113637662"
 conv2d_1/StatefulPartitionedCallд
tf.nn.leaky_relu_1/LeakyRelu	LeakyRelu)conv2d_1/StatefulPartitionedCall:output:0*0
_output_shapes
:         ч2
tf.nn.leaky_relu_1/LeakyRelu╩
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_1/LeakyRelu:activations:0conv2d_2_11364077conv2d_2_11364079*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         э*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_113638042"
 conv2d_2/StatefulPartitionedCallд
tf.nn.leaky_relu_2/LeakyRelu	LeakyRelu)conv2d_2/StatefulPartitionedCall:output:0*0
_output_shapes
:         э2
tf.nn.leaky_relu_2/LeakyRelu╩
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_2/LeakyRelu:activations:0conv2d_3_11364083conv2d_3_11364085*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         №*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_113638422"
 conv2d_3/StatefulPartitionedCallд
tf.nn.leaky_relu_3/LeakyRelu	LeakyRelu)conv2d_3/StatefulPartitionedCall:output:0*0
_output_shapes
:         №2
tf.nn.leaky_relu_3/LeakyRelu╩
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_3/LeakyRelu:activations:0conv2d_4_11364089conv2d_4_11364091*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ▀*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_113638802"
 conv2d_4/StatefulPartitionedCallд
tf.nn.leaky_relu_4/LeakyRelu	LeakyRelu)conv2d_4/StatefulPartitionedCall:output:0*0
_output_shapes
:         ▀2
tf.nn.leaky_relu_4/LeakyRelu╩
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_4/LeakyRelu:activations:0conv2d_5_11364095conv2d_5_11364097*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ┐*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_113639182"
 conv2d_5/StatefulPartitionedCallд
tf.nn.leaky_relu_5/LeakyRelu	LeakyRelu)conv2d_5/StatefulPartitionedCall:output:0*0
_output_shapes
:         ┐2
tf.nn.leaky_relu_5/LeakyRelu╩
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_5/LeakyRelu:activations:0conv2d_6_11364101conv2d_6_11364103*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_6_layer_call_and_return_conditional_losses_113639562"
 conv2d_6/StatefulPartitionedCallд
tf.nn.leaky_relu_6/LeakyRelu	LeakyRelu)conv2d_6/StatefulPartitionedCall:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_6/LeakyRelu╩
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_6/LeakyRelu:activations:0conv2d_7_11364107conv2d_7_11364109*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_7_layer_call_and_return_conditional_losses_113639942"
 conv2d_7/StatefulPartitionedCallд
tf.nn.leaky_relu_7/LeakyRelu	LeakyRelu)conv2d_7/StatefulPartitionedCall:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_7/LeakyRelu╩
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_7/LeakyRelu:activations:0conv2d_8_11364113conv2d_8_11364115*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_8_layer_call_and_return_conditional_losses_113640212"
 conv2d_8/StatefulPartitionedCallё
reshape_1/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_reshape_1_layer_call_and_return_conditional_losses_113640502
reshape_1/PartitionedCall┤
IdentityIdentity"reshape_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall:U Q
,
_output_shapes
:          
!
_user_specified_name	input_1
Р
▀
F__inference_conv2d_6_layer_call_and_return_conditional_losses_11363956

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"@      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"┐     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"@      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"@      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:          2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:          2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ┐::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ┐
 
_user_specified_nameinputs
­	
П
D__inference_conv2d_layer_call_and_return_conditional_losses_11363728

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         §*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         §2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         §2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ■::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ■
 
_user_specified_nameinputs
─ы
У
C__inference_model_layer_call_and_return_conditional_losses_11364540

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource+
'conv2d_5_conv2d_readvariableop_resource,
(conv2d_5_biasadd_readvariableop_resource+
'conv2d_6_conv2d_readvariableop_resource,
(conv2d_6_biasadd_readvariableop_resource+
'conv2d_7_conv2d_readvariableop_resource,
(conv2d_7_biasadd_readvariableop_resource+
'conv2d_8_conv2d_readvariableop_resource,
(conv2d_8_biasadd_readvariableop_resource
identityѕбconv2d/BiasAdd/ReadVariableOpбconv2d/Conv2D/ReadVariableOpбconv2d_1/BiasAdd/ReadVariableOpбconv2d_1/Conv2D/ReadVariableOpбconv2d_2/BiasAdd/ReadVariableOpбconv2d_2/Conv2D/ReadVariableOpбconv2d_3/BiasAdd/ReadVariableOpбconv2d_3/Conv2D/ReadVariableOpбconv2d_4/BiasAdd/ReadVariableOpбconv2d_4/Conv2D/ReadVariableOpбconv2d_5/BiasAdd/ReadVariableOpбconv2d_5/Conv2D/ReadVariableOpбconv2d_6/BiasAdd/ReadVariableOpбconv2d_6/Conv2D/ReadVariableOpбconv2d_7/BiasAdd/ReadVariableOpбconv2d_7/Conv2D/ReadVariableOpбconv2d_8/BiasAdd/ReadVariableOpбconv2d_8/Conv2D/ReadVariableOpp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axisа
tf.concat/concatConcatV2inputsinputstf.concat/concat/axis:output:0*
N*
T0*,
_output_shapes
:         ■2
tf.concat/concatg
reshape/ShapeShapetf.concat/concat:output:0*
T0*
_output_shapes
:2
reshape/Shapeё
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stackѕ
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1ѕ
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2њ
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_sliceu
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :■2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/3Ж
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shapeБ
reshape/ReshapeReshapetf.concat/concat:output:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         ■2
reshape/Reshapeф
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp╠
conv2d/Conv2DConv2Dreshape/Reshape:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         §*
paddingVALID*
strides
2
conv2d/Conv2DА
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOpЦ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         §2
conv2d/BiasAddљ
tf.nn.leaky_relu/LeakyRelu	LeakyReluconv2d/BiasAdd:output:0*0
_output_shapes
:         §2
tf.nn.leaky_relu/LeakyReluЈ
conv2d_1/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
conv2d_1/Conv2D/dilation_rate═
<conv2d_1/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"§     2>
<conv2d_1/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_1/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_1/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_1/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_1/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_1/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_1/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_1/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_1/Conv2D/SpaceToBatchND/block_shape│
'conv2d_1/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_1/Conv2D/SpaceToBatchND/paddingsъ
conv2d_1/Conv2D/SpaceToBatchNDSpaceToBatchND(tf.nn.leaky_relu/LeakyRelu:activations:03conv2d_1/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_1/Conv2D/SpaceToBatchND/paddings:output:0*
T0*0
_output_shapes
:          2 
conv2d_1/Conv2D/SpaceToBatchND░
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOpр
conv2d_1/Conv2DConv2D'conv2d_1/Conv2D/SpaceToBatchND:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ■*
paddingVALID*
strides
2
conv2d_1/Conv2DЕ
*conv2d_1/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_1/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_1/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_1/Conv2D/BatchToSpaceND/cropsІ
conv2d_1/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_1/Conv2D:output:03conv2d_1/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_1/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ч2 
conv2d_1/Conv2D/BatchToSpaceNDД
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp╝
conv2d_1/BiasAddBiasAdd'conv2d_1/Conv2D/BatchToSpaceND:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ч2
conv2d_1/BiasAddќ
tf.nn.leaky_relu_1/LeakyRelu	LeakyReluconv2d_1/BiasAdd:output:0*0
_output_shapes
:         ч2
tf.nn.leaky_relu_1/LeakyReluЈ
conv2d_2/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
conv2d_2/Conv2D/dilation_rate═
<conv2d_2/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"ч     2>
<conv2d_2/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_2/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_2/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_2/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_2/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_2/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_2/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_2/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_2/Conv2D/SpaceToBatchND/block_shape│
'conv2d_2/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_2/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_2/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_1/LeakyRelu:activations:03conv2d_2/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_2/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2 
conv2d_2/Conv2D/SpaceToBatchND░
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_2/Conv2D/ReadVariableOpЯ
conv2d_2/Conv2DConv2D'conv2d_2/Conv2D/SpaceToBatchND:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ~*
paddingVALID*
strides
2
conv2d_2/Conv2DЕ
*conv2d_2/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_2/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_2/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_2/Conv2D/BatchToSpaceND/cropsІ
conv2d_2/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_2/Conv2D:output:03conv2d_2/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_2/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         э2 
conv2d_2/Conv2D/BatchToSpaceNDД
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp╝
conv2d_2/BiasAddBiasAdd'conv2d_2/Conv2D/BatchToSpaceND:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         э2
conv2d_2/BiasAddќ
tf.nn.leaky_relu_2/LeakyRelu	LeakyReluconv2d_2/BiasAdd:output:0*0
_output_shapes
:         э2
tf.nn.leaky_relu_2/LeakyReluЈ
conv2d_3/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
conv2d_3/Conv2D/dilation_rate═
<conv2d_3/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"э     2>
<conv2d_3/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_3/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_3/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_3/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_3/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_3/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_3/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_3/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_3/Conv2D/SpaceToBatchND/block_shape│
'conv2d_3/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_3/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_3/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_2/LeakyRelu:activations:03conv2d_3/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_3/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         ?2 
conv2d_3/Conv2D/SpaceToBatchND░
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOpЯ
conv2d_3/Conv2DConv2D'conv2d_3/Conv2D/SpaceToBatchND:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >*
paddingVALID*
strides
2
conv2d_3/Conv2DЕ
*conv2d_3/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_3/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_3/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_3/Conv2D/BatchToSpaceND/cropsІ
conv2d_3/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_3/Conv2D:output:03conv2d_3/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_3/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         №2 
conv2d_3/Conv2D/BatchToSpaceNDД
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp╝
conv2d_3/BiasAddBiasAdd'conv2d_3/Conv2D/BatchToSpaceND:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         №2
conv2d_3/BiasAddќ
tf.nn.leaky_relu_3/LeakyRelu	LeakyReluconv2d_3/BiasAdd:output:0*0
_output_shapes
:         №2
tf.nn.leaky_relu_3/LeakyReluЈ
conv2d_4/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
conv2d_4/Conv2D/dilation_rate═
<conv2d_4/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"№     2>
<conv2d_4/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_4/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_4/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_4/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_4/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_4/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_4/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_4/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_4/Conv2D/SpaceToBatchND/block_shape│
'conv2d_4/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_4/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_4/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_3/LeakyRelu:activations:03conv2d_4/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_4/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2 
conv2d_4/Conv2D/SpaceToBatchND░
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_4/Conv2D/ReadVariableOpЯ
conv2d_4/Conv2DConv2D'conv2d_4/Conv2D/SpaceToBatchND:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
conv2d_4/Conv2DЕ
*conv2d_4/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2,
*conv2d_4/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_4/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_4/Conv2D/BatchToSpaceND/cropsІ
conv2d_4/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_4/Conv2D:output:03conv2d_4/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_4/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ▀2 
conv2d_4/Conv2D/BatchToSpaceNDД
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp╝
conv2d_4/BiasAddBiasAdd'conv2d_4/Conv2D/BatchToSpaceND:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ▀2
conv2d_4/BiasAddќ
tf.nn.leaky_relu_4/LeakyRelu	LeakyReluconv2d_4/BiasAdd:output:0*0
_output_shapes
:         ▀2
tf.nn.leaky_relu_4/LeakyReluЈ
conv2d_5/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"       2
conv2d_5/Conv2D/dilation_rate═
<conv2d_5/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"▀     2>
<conv2d_5/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_5/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_5/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_5/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_5/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_5/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_5/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_5/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*conv2d_5/Conv2D/SpaceToBatchND/block_shape│
'conv2d_5/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_5/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_5/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_4/LeakyRelu:activations:03conv2d_5/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_5/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2 
conv2d_5/Conv2D/SpaceToBatchND░
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_5/Conv2D/ReadVariableOpЯ
conv2d_5/Conv2DConv2D'conv2d_5/Conv2D/SpaceToBatchND:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
conv2d_5/Conv2DЕ
*conv2d_5/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2,
*conv2d_5/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_5/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_5/Conv2D/BatchToSpaceND/cropsІ
conv2d_5/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_5/Conv2D:output:03conv2d_5/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_5/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ┐2 
conv2d_5/Conv2D/BatchToSpaceNDД
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp╝
conv2d_5/BiasAddBiasAdd'conv2d_5/Conv2D/BatchToSpaceND:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ┐2
conv2d_5/BiasAddќ
tf.nn.leaky_relu_5/LeakyRelu	LeakyReluconv2d_5/BiasAdd:output:0*0
_output_shapes
:         ┐2
tf.nn.leaky_relu_5/LeakyReluЈ
conv2d_6/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"@      2
conv2d_6/Conv2D/dilation_rate═
<conv2d_6/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"┐     2>
<conv2d_6/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_6/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_6/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_6/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_6/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_6/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_6/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_6/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"@      2,
*conv2d_6/Conv2D/SpaceToBatchND/block_shape│
'conv2d_6/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_6/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_6/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_5/LeakyRelu:activations:03conv2d_6/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_6/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2 
conv2d_6/Conv2D/SpaceToBatchND░
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_6/Conv2D/ReadVariableOpЯ
conv2d_6/Conv2DConv2D'conv2d_6/Conv2D/SpaceToBatchND:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
conv2d_6/Conv2DЕ
*conv2d_6/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"@      2,
*conv2d_6/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_6/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_6/Conv2D/BatchToSpaceND/cropsІ
conv2d_6/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_6/Conv2D:output:03conv2d_6/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_6/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:          2 
conv2d_6/Conv2D/BatchToSpaceNDД
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_6/BiasAdd/ReadVariableOp╝
conv2d_6/BiasAddBiasAdd'conv2d_6/Conv2D/BatchToSpaceND:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2
conv2d_6/BiasAddќ
tf.nn.leaky_relu_6/LeakyRelu	LeakyReluconv2d_6/BiasAdd:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_6/LeakyReluЈ
conv2d_7/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"ђ      2
conv2d_7/Conv2D/dilation_rate═
<conv2d_7/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"     2>
<conv2d_7/Conv2D/required_space_to_batch_paddings/input_shapeр
>conv2d_7/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2@
>conv2d_7/Conv2D/required_space_to_batch_paddings/base_paddingsО
9conv2d_7/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2;
9conv2d_7/Conv2D/required_space_to_batch_paddings/paddingsЛ
6conv2d_7/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               28
6conv2d_7/Conv2D/required_space_to_batch_paddings/cropsЕ
*conv2d_7/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      2,
*conv2d_7/Conv2D/SpaceToBatchND/block_shape│
'conv2d_7/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2)
'conv2d_7/Conv2D/SpaceToBatchND/paddingsЪ
conv2d_7/Conv2D/SpaceToBatchNDSpaceToBatchND*tf.nn.leaky_relu_6/LeakyRelu:activations:03conv2d_7/Conv2D/SpaceToBatchND/block_shape:output:00conv2d_7/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2 
conv2d_7/Conv2D/SpaceToBatchND░
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_7/Conv2D/ReadVariableOpЯ
conv2d_7/Conv2DConv2D'conv2d_7/Conv2D/SpaceToBatchND:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
conv2d_7/Conv2DЕ
*conv2d_7/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      2,
*conv2d_7/Conv2D/BatchToSpaceND/block_shapeГ
$conv2d_7/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2&
$conv2d_7/Conv2D/BatchToSpaceND/cropsІ
conv2d_7/Conv2D/BatchToSpaceNDBatchToSpaceNDconv2d_7/Conv2D:output:03conv2d_7/Conv2D/BatchToSpaceND/block_shape:output:0-conv2d_7/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:          2 
conv2d_7/Conv2D/BatchToSpaceNDД
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_7/BiasAdd/ReadVariableOp╝
conv2d_7/BiasAddBiasAdd'conv2d_7/Conv2D/BatchToSpaceND:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2
conv2d_7/BiasAddќ
tf.nn.leaky_relu_7/LeakyRelu	LeakyReluconv2d_7/BiasAdd:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_7/LeakyRelu░
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_8/Conv2D/ReadVariableOpС
conv2d_8/Conv2DConv2D*tf.nn.leaky_relu_7/LeakyRelu:activations:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_8/Conv2DД
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_8/BiasAdd/ReadVariableOpГ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2
conv2d_8/BiasAddk
reshape_1/ShapeShapeconv2d_8/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_1/Shapeѕ
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_1/strided_slice/stackї
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_1ї
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_1/strided_slice/stack_2ъ
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_1/strided_slicey
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B : 2
reshape_1/Reshape/shape/1x
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_1/Reshape/shape/2м
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_1/Reshape/shapeЦ
reshape_1/ReshapeReshapeconv2d_8/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:          2
reshape_1/Reshape╩
IdentityIdentityreshape_1/Reshape:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp:T P
,
_output_shapes
:          
 
_user_specified_nameinputs
┴C
Х
C__inference_model_layer_call_and_return_conditional_losses_11364059
input_1
conv2d_11363739
conv2d_11363741
conv2d_1_11363777
conv2d_1_11363779
conv2d_2_11363815
conv2d_2_11363817
conv2d_3_11363853
conv2d_3_11363855
conv2d_4_11363891
conv2d_4_11363893
conv2d_5_11363929
conv2d_5_11363931
conv2d_6_11363967
conv2d_6_11363969
conv2d_7_11364005
conv2d_7_11364007
conv2d_8_11364032
conv2d_8_11364034
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallб conv2d_6/StatefulPartitionedCallб conv2d_7/StatefulPartitionedCallб conv2d_8/StatefulPartitionedCallp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axisб
tf.concat/concatConcatV2input_1input_1tf.concat/concat/axis:output:0*
N*
T0*,
_output_shapes
:         ■2
tf.concat/concatЫ
reshape/PartitionedCallPartitionedCalltf.concat/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ■* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_113637102
reshape/PartitionedCallХ
conv2d/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_11363739conv2d_11363741*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         §*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_113637282 
conv2d/StatefulPartitionedCallа
tf.nn.leaky_relu/LeakyRelu	LeakyRelu'conv2d/StatefulPartitionedCall:output:0*0
_output_shapes
:         §2
tf.nn.leaky_relu/LeakyRelu╚
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(tf.nn.leaky_relu/LeakyRelu:activations:0conv2d_1_11363777conv2d_1_11363779*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ч*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_113637662"
 conv2d_1/StatefulPartitionedCallд
tf.nn.leaky_relu_1/LeakyRelu	LeakyRelu)conv2d_1/StatefulPartitionedCall:output:0*0
_output_shapes
:         ч2
tf.nn.leaky_relu_1/LeakyRelu╩
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_1/LeakyRelu:activations:0conv2d_2_11363815conv2d_2_11363817*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         э*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_113638042"
 conv2d_2/StatefulPartitionedCallд
tf.nn.leaky_relu_2/LeakyRelu	LeakyRelu)conv2d_2/StatefulPartitionedCall:output:0*0
_output_shapes
:         э2
tf.nn.leaky_relu_2/LeakyRelu╩
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_2/LeakyRelu:activations:0conv2d_3_11363853conv2d_3_11363855*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         №*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_113638422"
 conv2d_3/StatefulPartitionedCallд
tf.nn.leaky_relu_3/LeakyRelu	LeakyRelu)conv2d_3/StatefulPartitionedCall:output:0*0
_output_shapes
:         №2
tf.nn.leaky_relu_3/LeakyRelu╩
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_3/LeakyRelu:activations:0conv2d_4_11363891conv2d_4_11363893*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ▀*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_113638802"
 conv2d_4/StatefulPartitionedCallд
tf.nn.leaky_relu_4/LeakyRelu	LeakyRelu)conv2d_4/StatefulPartitionedCall:output:0*0
_output_shapes
:         ▀2
tf.nn.leaky_relu_4/LeakyRelu╩
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_4/LeakyRelu:activations:0conv2d_5_11363929conv2d_5_11363931*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ┐*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_113639182"
 conv2d_5/StatefulPartitionedCallд
tf.nn.leaky_relu_5/LeakyRelu	LeakyRelu)conv2d_5/StatefulPartitionedCall:output:0*0
_output_shapes
:         ┐2
tf.nn.leaky_relu_5/LeakyRelu╩
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_5/LeakyRelu:activations:0conv2d_6_11363967conv2d_6_11363969*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_6_layer_call_and_return_conditional_losses_113639562"
 conv2d_6/StatefulPartitionedCallд
tf.nn.leaky_relu_6/LeakyRelu	LeakyRelu)conv2d_6/StatefulPartitionedCall:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_6/LeakyRelu╩
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_6/LeakyRelu:activations:0conv2d_7_11364005conv2d_7_11364007*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_7_layer_call_and_return_conditional_losses_113639942"
 conv2d_7/StatefulPartitionedCallд
tf.nn.leaky_relu_7/LeakyRelu	LeakyRelu)conv2d_7/StatefulPartitionedCall:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_7/LeakyRelu╩
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_7/LeakyRelu:activations:0conv2d_8_11364032conv2d_8_11364034*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_8_layer_call_and_return_conditional_losses_113640212"
 conv2d_8/StatefulPartitionedCallё
reshape_1/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_reshape_1_layer_call_and_return_conditional_losses_113640502
reshape_1/PartitionedCall┤
IdentityIdentity"reshape_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall:U Q
,
_output_shapes
:          
!
_user_specified_name	input_1
ѕ
ђ
+__inference_conv2d_1_layer_call_fn_11364854

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ч*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_113637662
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ч2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         §::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         §
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_4_layer_call_and_return_conditional_losses_11363880

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"№     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ▀2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ▀2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ▀2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         №::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         №
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_3_layer_call_and_return_conditional_losses_11364905

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"э     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         ?2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >*
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         №2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         №2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         №2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         э::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         э
 
_user_specified_nameinputs
ѕ
ђ
+__inference_conv2d_6_layer_call_fn_11365004

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_6_layer_call_and_return_conditional_losses_113639562
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:          2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ┐::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ┐
 
_user_specified_nameinputs
ѕ
ђ
+__inference_conv2d_5_layer_call_fn_11364974

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ┐*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_113639182
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ┐2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ▀::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ▀
 
_user_specified_nameinputs
ѕ
ђ
+__inference_conv2d_7_layer_call_fn_11365034

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_7_layer_call_and_return_conditional_losses_113639942
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:          2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:          ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:          
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_7_layer_call_and_return_conditional_losses_11363994

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"ђ      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:          2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:          2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:          ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:          
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_5_layer_call_and_return_conditional_losses_11364965

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"       2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"▀     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ┐2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ┐2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ┐2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ▀::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ▀
 
_user_specified_nameinputs
с{
З
!__inference__traced_save_11365277
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop3
/savev2_adam_conv2d_6_bias_m_read_readvariableop5
1savev2_adam_conv2d_7_kernel_m_read_readvariableop3
/savev2_adam_conv2d_7_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop3
/savev2_adam_conv2d_8_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop3
/savev2_adam_conv2d_6_bias_v_read_readvariableop5
1savev2_adam_conv2d_7_kernel_v_read_readvariableop3
/savev2_adam_conv2d_7_bias_v_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop3
/savev2_adam_conv2d_8_bias_v_read_readvariableop
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
ShardedFilenameЧ"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*ј"
valueё"BЂ">B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЄ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*Љ
valueЄBё>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЅ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop1savev2_adam_conv2d_7_kernel_m_read_readvariableop/savev2_adam_conv2d_7_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop1savev2_adam_conv2d_7_kernel_v_read_readvariableop/savev2_adam_conv2d_7_bias_v_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *L
dtypesB
@2>	2
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

identity_1Identity_1:output:0*»
_input_shapesЮ
џ: ::::::::::::::::::: : : : : : : ::::::::::::::::::::::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
:: %

_output_shapes
::,&(
&
_output_shapes
:: '

_output_shapes
::,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
::,0(
&
_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
::,8(
&
_output_shapes
:: 9

_output_shapes
::,:(
&
_output_shapes
:: ;

_output_shapes
::,<(
&
_output_shapes
:: =

_output_shapes
::>

_output_shapes
: 
ѕ
ђ
+__inference_conv2d_4_layer_call_fn_11364944

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ▀*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_113638802
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ▀2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         №::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         №
 
_user_specified_nameinputs
йC
х
C__inference_model_layer_call_and_return_conditional_losses_11364184

inputs
conv2d_11364129
conv2d_11364131
conv2d_1_11364135
conv2d_1_11364137
conv2d_2_11364141
conv2d_2_11364143
conv2d_3_11364147
conv2d_3_11364149
conv2d_4_11364153
conv2d_4_11364155
conv2d_5_11364159
conv2d_5_11364161
conv2d_6_11364165
conv2d_6_11364167
conv2d_7_11364171
conv2d_7_11364173
conv2d_8_11364177
conv2d_8_11364179
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallб conv2d_6/StatefulPartitionedCallб conv2d_7/StatefulPartitionedCallб conv2d_8/StatefulPartitionedCallp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axisа
tf.concat/concatConcatV2inputsinputstf.concat/concat/axis:output:0*
N*
T0*,
_output_shapes
:         ■2
tf.concat/concatЫ
reshape/PartitionedCallPartitionedCalltf.concat/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ■* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_113637102
reshape/PartitionedCallХ
conv2d/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_11364129conv2d_11364131*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         §*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_113637282 
conv2d/StatefulPartitionedCallа
tf.nn.leaky_relu/LeakyRelu	LeakyRelu'conv2d/StatefulPartitionedCall:output:0*0
_output_shapes
:         §2
tf.nn.leaky_relu/LeakyRelu╚
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(tf.nn.leaky_relu/LeakyRelu:activations:0conv2d_1_11364135conv2d_1_11364137*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ч*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_113637662"
 conv2d_1/StatefulPartitionedCallд
tf.nn.leaky_relu_1/LeakyRelu	LeakyRelu)conv2d_1/StatefulPartitionedCall:output:0*0
_output_shapes
:         ч2
tf.nn.leaky_relu_1/LeakyRelu╩
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_1/LeakyRelu:activations:0conv2d_2_11364141conv2d_2_11364143*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         э*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_113638042"
 conv2d_2/StatefulPartitionedCallд
tf.nn.leaky_relu_2/LeakyRelu	LeakyRelu)conv2d_2/StatefulPartitionedCall:output:0*0
_output_shapes
:         э2
tf.nn.leaky_relu_2/LeakyRelu╩
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_2/LeakyRelu:activations:0conv2d_3_11364147conv2d_3_11364149*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         №*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_113638422"
 conv2d_3/StatefulPartitionedCallд
tf.nn.leaky_relu_3/LeakyRelu	LeakyRelu)conv2d_3/StatefulPartitionedCall:output:0*0
_output_shapes
:         №2
tf.nn.leaky_relu_3/LeakyRelu╩
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_3/LeakyRelu:activations:0conv2d_4_11364153conv2d_4_11364155*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ▀*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_113638802"
 conv2d_4/StatefulPartitionedCallд
tf.nn.leaky_relu_4/LeakyRelu	LeakyRelu)conv2d_4/StatefulPartitionedCall:output:0*0
_output_shapes
:         ▀2
tf.nn.leaky_relu_4/LeakyRelu╩
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_4/LeakyRelu:activations:0conv2d_5_11364159conv2d_5_11364161*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ┐*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_113639182"
 conv2d_5/StatefulPartitionedCallд
tf.nn.leaky_relu_5/LeakyRelu	LeakyRelu)conv2d_5/StatefulPartitionedCall:output:0*0
_output_shapes
:         ┐2
tf.nn.leaky_relu_5/LeakyRelu╩
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_5/LeakyRelu:activations:0conv2d_6_11364165conv2d_6_11364167*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_6_layer_call_and_return_conditional_losses_113639562"
 conv2d_6/StatefulPartitionedCallд
tf.nn.leaky_relu_6/LeakyRelu	LeakyRelu)conv2d_6/StatefulPartitionedCall:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_6/LeakyRelu╩
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_6/LeakyRelu:activations:0conv2d_7_11364171conv2d_7_11364173*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_7_layer_call_and_return_conditional_losses_113639942"
 conv2d_7/StatefulPartitionedCallд
tf.nn.leaky_relu_7/LeakyRelu	LeakyRelu)conv2d_7/StatefulPartitionedCall:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_7/LeakyRelu╩
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_7/LeakyRelu:activations:0conv2d_8_11364177conv2d_8_11364179*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_8_layer_call_and_return_conditional_losses_113640212"
 conv2d_8/StatefulPartitionedCallё
reshape_1/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_reshape_1_layer_call_and_return_conditional_losses_113640502
reshape_1/PartitionedCall┤
IdentityIdentity"reshape_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall:T P
,
_output_shapes
:          
 
_user_specified_nameinputs
Ѓ
~
)__inference_conv2d_layer_call_fn_11364824

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         §*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_113637282
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         §2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ■::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ■
 
_user_specified_nameinputs
ѕ
ђ
+__inference_conv2d_3_layer_call_fn_11364914

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         №*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_113638422
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         №2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         э::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         э
 
_user_specified_nameinputs
ш
c
G__inference_reshape_1_layer_call_and_return_conditional_losses_11365066

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B : 2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2а
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:          2	
Reshapei
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*/
_input_shapes
:          :X T
0
_output_shapes
:          
 
_user_specified_nameinputs
з
a
E__inference_reshape_layer_call_and_return_conditional_losses_11363710

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :■2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3║
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:         ■2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:         ■2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ■:T P
,
_output_shapes
:         ■
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_5_layer_call_and_return_conditional_losses_11363918

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"       2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"▀     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ┐2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ┐2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ┐2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ▀::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ▀
 
_user_specified_nameinputs
р

з
&__inference_signature_wrapper_11364376
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityѕбStatefulPartitionedCall│
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          *4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *,
f'R%
#__inference__wrapped_model_113636902
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:          
!
_user_specified_name	input_1
Ѓ
ш
(__inference_model_layer_call_fn_11364325
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityѕбStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          *4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_113642862
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:          
!
_user_specified_name	input_1
Ѓ
ш
(__inference_model_layer_call_fn_11364223
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityѕбStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          *4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_113641842
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:          
!
_user_specified_name	input_1
Ы	
▀
F__inference_conv2d_8_layer_call_and_return_conditional_losses_11365044

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:          *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:          2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:          ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:          
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_3_layer_call_and_return_conditional_losses_11363842

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"э     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         ?2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >*
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         №2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         №2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         №2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         э::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         э
 
_user_specified_nameinputs
│
F
*__inference_reshape_layer_call_fn_11364805

inputs
identity¤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ■* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_113637102
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ■2

Identity"
identityIdentity:output:0*+
_input_shapes
:         ■:T P
,
_output_shapes
:         ■
 
_user_specified_nameinputs
вѕ
А
#__inference__wrapped_model_11363690
input_1/
+model_conv2d_conv2d_readvariableop_resource0
,model_conv2d_biasadd_readvariableop_resource1
-model_conv2d_1_conv2d_readvariableop_resource2
.model_conv2d_1_biasadd_readvariableop_resource1
-model_conv2d_2_conv2d_readvariableop_resource2
.model_conv2d_2_biasadd_readvariableop_resource1
-model_conv2d_3_conv2d_readvariableop_resource2
.model_conv2d_3_biasadd_readvariableop_resource1
-model_conv2d_4_conv2d_readvariableop_resource2
.model_conv2d_4_biasadd_readvariableop_resource1
-model_conv2d_5_conv2d_readvariableop_resource2
.model_conv2d_5_biasadd_readvariableop_resource1
-model_conv2d_6_conv2d_readvariableop_resource2
.model_conv2d_6_biasadd_readvariableop_resource1
-model_conv2d_7_conv2d_readvariableop_resource2
.model_conv2d_7_biasadd_readvariableop_resource1
-model_conv2d_8_conv2d_readvariableop_resource2
.model_conv2d_8_biasadd_readvariableop_resource
identityѕб#model/conv2d/BiasAdd/ReadVariableOpб"model/conv2d/Conv2D/ReadVariableOpб%model/conv2d_1/BiasAdd/ReadVariableOpб$model/conv2d_1/Conv2D/ReadVariableOpб%model/conv2d_2/BiasAdd/ReadVariableOpб$model/conv2d_2/Conv2D/ReadVariableOpб%model/conv2d_3/BiasAdd/ReadVariableOpб$model/conv2d_3/Conv2D/ReadVariableOpб%model/conv2d_4/BiasAdd/ReadVariableOpб$model/conv2d_4/Conv2D/ReadVariableOpб%model/conv2d_5/BiasAdd/ReadVariableOpб$model/conv2d_5/Conv2D/ReadVariableOpб%model/conv2d_6/BiasAdd/ReadVariableOpб$model/conv2d_6/Conv2D/ReadVariableOpб%model/conv2d_7/BiasAdd/ReadVariableOpб$model/conv2d_7/Conv2D/ReadVariableOpб%model/conv2d_8/BiasAdd/ReadVariableOpб$model/conv2d_8/Conv2D/ReadVariableOp|
model/tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/tf.concat/concat/axis┤
model/tf.concat/concatConcatV2input_1input_1$model/tf.concat/concat/axis:output:0*
N*
T0*,
_output_shapes
:         ■2
model/tf.concat/concaty
model/reshape/ShapeShapemodel/tf.concat/concat:output:0*
T0*
_output_shapes
:2
model/reshape/Shapeљ
!model/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model/reshape/strided_slice/stackћ
#model/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#model/reshape/strided_slice/stack_1ћ
#model/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model/reshape/strided_slice/stack_2Х
model/reshape/strided_sliceStridedSlicemodel/reshape/Shape:output:0*model/reshape/strided_slice/stack:output:0,model/reshape/strided_slice/stack_1:output:0,model/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model/reshape/strided_sliceЂ
model/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :■2
model/reshape/Reshape/shape/1ђ
model/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
model/reshape/Reshape/shape/2ђ
model/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
model/reshape/Reshape/shape/3ј
model/reshape/Reshape/shapePack$model/reshape/strided_slice:output:0&model/reshape/Reshape/shape/1:output:0&model/reshape/Reshape/shape/2:output:0&model/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
model/reshape/Reshape/shape╗
model/reshape/ReshapeReshapemodel/tf.concat/concat:output:0$model/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         ■2
model/reshape/Reshape╝
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02$
"model/conv2d/Conv2D/ReadVariableOpС
model/conv2d/Conv2DConv2Dmodel/reshape/Reshape:output:0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         §*
paddingVALID*
strides
2
model/conv2d/Conv2D│
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#model/conv2d/BiasAdd/ReadVariableOpй
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         §2
model/conv2d/BiasAddб
 model/tf.nn.leaky_relu/LeakyRelu	LeakyRelumodel/conv2d/BiasAdd:output:0*0
_output_shapes
:         §2"
 model/tf.nn.leaky_relu/LeakyReluЏ
#model/conv2d_1/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/conv2d_1/Conv2D/dilation_rate┘
Bmodel/conv2d_1/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"§     2D
Bmodel/conv2d_1/Conv2D/required_space_to_batch_paddings/input_shapeь
Dmodel/conv2d_1/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2F
Dmodel/conv2d_1/Conv2D/required_space_to_batch_paddings/base_paddingsс
?model/conv2d_1/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2A
?model/conv2d_1/Conv2D/required_space_to_batch_paddings/paddingsП
<model/conv2d_1/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2>
<model/conv2d_1/Conv2D/required_space_to_batch_paddings/cropsх
0model/conv2d_1/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0model/conv2d_1/Conv2D/SpaceToBatchND/block_shape┐
-model/conv2d_1/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-model/conv2d_1/Conv2D/SpaceToBatchND/paddings╝
$model/conv2d_1/Conv2D/SpaceToBatchNDSpaceToBatchND.model/tf.nn.leaky_relu/LeakyRelu:activations:09model/conv2d_1/Conv2D/SpaceToBatchND/block_shape:output:06model/conv2d_1/Conv2D/SpaceToBatchND/paddings:output:0*
T0*0
_output_shapes
:          2&
$model/conv2d_1/Conv2D/SpaceToBatchND┬
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model/conv2d_1/Conv2D/ReadVariableOpщ
model/conv2d_1/Conv2DConv2D-model/conv2d_1/Conv2D/SpaceToBatchND:output:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ■*
paddingVALID*
strides
2
model/conv2d_1/Conv2Dх
0model/conv2d_1/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0model/conv2d_1/Conv2D/BatchToSpaceND/block_shape╣
*model/conv2d_1/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2,
*model/conv2d_1/Conv2D/BatchToSpaceND/cropsЕ
$model/conv2d_1/Conv2D/BatchToSpaceNDBatchToSpaceNDmodel/conv2d_1/Conv2D:output:09model/conv2d_1/Conv2D/BatchToSpaceND/block_shape:output:03model/conv2d_1/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ч2&
$model/conv2d_1/Conv2D/BatchToSpaceND╣
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv2d_1/BiasAdd/ReadVariableOpн
model/conv2d_1/BiasAddBiasAdd-model/conv2d_1/Conv2D/BatchToSpaceND:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ч2
model/conv2d_1/BiasAddе
"model/tf.nn.leaky_relu_1/LeakyRelu	LeakyRelumodel/conv2d_1/BiasAdd:output:0*0
_output_shapes
:         ч2$
"model/tf.nn.leaky_relu_1/LeakyReluЏ
#model/conv2d_2/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/conv2d_2/Conv2D/dilation_rate┘
Bmodel/conv2d_2/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"ч     2D
Bmodel/conv2d_2/Conv2D/required_space_to_batch_paddings/input_shapeь
Dmodel/conv2d_2/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2F
Dmodel/conv2d_2/Conv2D/required_space_to_batch_paddings/base_paddingsс
?model/conv2d_2/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2A
?model/conv2d_2/Conv2D/required_space_to_batch_paddings/paddingsП
<model/conv2d_2/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2>
<model/conv2d_2/Conv2D/required_space_to_batch_paddings/cropsх
0model/conv2d_2/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0model/conv2d_2/Conv2D/SpaceToBatchND/block_shape┐
-model/conv2d_2/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-model/conv2d_2/Conv2D/SpaceToBatchND/paddingsй
$model/conv2d_2/Conv2D/SpaceToBatchNDSpaceToBatchND0model/tf.nn.leaky_relu_1/LeakyRelu:activations:09model/conv2d_2/Conv2D/SpaceToBatchND/block_shape:output:06model/conv2d_2/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2&
$model/conv2d_2/Conv2D/SpaceToBatchND┬
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model/conv2d_2/Conv2D/ReadVariableOpЭ
model/conv2d_2/Conv2DConv2D-model/conv2d_2/Conv2D/SpaceToBatchND:output:0,model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ~*
paddingVALID*
strides
2
model/conv2d_2/Conv2Dх
0model/conv2d_2/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0model/conv2d_2/Conv2D/BatchToSpaceND/block_shape╣
*model/conv2d_2/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2,
*model/conv2d_2/Conv2D/BatchToSpaceND/cropsЕ
$model/conv2d_2/Conv2D/BatchToSpaceNDBatchToSpaceNDmodel/conv2d_2/Conv2D:output:09model/conv2d_2/Conv2D/BatchToSpaceND/block_shape:output:03model/conv2d_2/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         э2&
$model/conv2d_2/Conv2D/BatchToSpaceND╣
%model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv2d_2/BiasAdd/ReadVariableOpн
model/conv2d_2/BiasAddBiasAdd-model/conv2d_2/Conv2D/BatchToSpaceND:output:0-model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         э2
model/conv2d_2/BiasAddе
"model/tf.nn.leaky_relu_2/LeakyRelu	LeakyRelumodel/conv2d_2/BiasAdd:output:0*0
_output_shapes
:         э2$
"model/tf.nn.leaky_relu_2/LeakyReluЏ
#model/conv2d_3/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/conv2d_3/Conv2D/dilation_rate┘
Bmodel/conv2d_3/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"э     2D
Bmodel/conv2d_3/Conv2D/required_space_to_batch_paddings/input_shapeь
Dmodel/conv2d_3/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2F
Dmodel/conv2d_3/Conv2D/required_space_to_batch_paddings/base_paddingsс
?model/conv2d_3/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2A
?model/conv2d_3/Conv2D/required_space_to_batch_paddings/paddingsП
<model/conv2d_3/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2>
<model/conv2d_3/Conv2D/required_space_to_batch_paddings/cropsх
0model/conv2d_3/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0model/conv2d_3/Conv2D/SpaceToBatchND/block_shape┐
-model/conv2d_3/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-model/conv2d_3/Conv2D/SpaceToBatchND/paddingsй
$model/conv2d_3/Conv2D/SpaceToBatchNDSpaceToBatchND0model/tf.nn.leaky_relu_2/LeakyRelu:activations:09model/conv2d_3/Conv2D/SpaceToBatchND/block_shape:output:06model/conv2d_3/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         ?2&
$model/conv2d_3/Conv2D/SpaceToBatchND┬
$model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model/conv2d_3/Conv2D/ReadVariableOpЭ
model/conv2d_3/Conv2DConv2D-model/conv2d_3/Conv2D/SpaceToBatchND:output:0,model/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >*
paddingVALID*
strides
2
model/conv2d_3/Conv2Dх
0model/conv2d_3/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0model/conv2d_3/Conv2D/BatchToSpaceND/block_shape╣
*model/conv2d_3/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2,
*model/conv2d_3/Conv2D/BatchToSpaceND/cropsЕ
$model/conv2d_3/Conv2D/BatchToSpaceNDBatchToSpaceNDmodel/conv2d_3/Conv2D:output:09model/conv2d_3/Conv2D/BatchToSpaceND/block_shape:output:03model/conv2d_3/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         №2&
$model/conv2d_3/Conv2D/BatchToSpaceND╣
%model/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv2d_3/BiasAdd/ReadVariableOpн
model/conv2d_3/BiasAddBiasAdd-model/conv2d_3/Conv2D/BatchToSpaceND:output:0-model/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         №2
model/conv2d_3/BiasAddе
"model/tf.nn.leaky_relu_3/LeakyRelu	LeakyRelumodel/conv2d_3/BiasAdd:output:0*0
_output_shapes
:         №2$
"model/tf.nn.leaky_relu_3/LeakyReluЏ
#model/conv2d_4/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2%
#model/conv2d_4/Conv2D/dilation_rate┘
Bmodel/conv2d_4/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"№     2D
Bmodel/conv2d_4/Conv2D/required_space_to_batch_paddings/input_shapeь
Dmodel/conv2d_4/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2F
Dmodel/conv2d_4/Conv2D/required_space_to_batch_paddings/base_paddingsс
?model/conv2d_4/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2A
?model/conv2d_4/Conv2D/required_space_to_batch_paddings/paddingsП
<model/conv2d_4/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2>
<model/conv2d_4/Conv2D/required_space_to_batch_paddings/cropsх
0model/conv2d_4/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0model/conv2d_4/Conv2D/SpaceToBatchND/block_shape┐
-model/conv2d_4/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-model/conv2d_4/Conv2D/SpaceToBatchND/paddingsй
$model/conv2d_4/Conv2D/SpaceToBatchNDSpaceToBatchND0model/tf.nn.leaky_relu_3/LeakyRelu:activations:09model/conv2d_4/Conv2D/SpaceToBatchND/block_shape:output:06model/conv2d_4/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2&
$model/conv2d_4/Conv2D/SpaceToBatchND┬
$model/conv2d_4/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model/conv2d_4/Conv2D/ReadVariableOpЭ
model/conv2d_4/Conv2DConv2D-model/conv2d_4/Conv2D/SpaceToBatchND:output:0,model/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
model/conv2d_4/Conv2Dх
0model/conv2d_4/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0model/conv2d_4/Conv2D/BatchToSpaceND/block_shape╣
*model/conv2d_4/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2,
*model/conv2d_4/Conv2D/BatchToSpaceND/cropsЕ
$model/conv2d_4/Conv2D/BatchToSpaceNDBatchToSpaceNDmodel/conv2d_4/Conv2D:output:09model/conv2d_4/Conv2D/BatchToSpaceND/block_shape:output:03model/conv2d_4/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ▀2&
$model/conv2d_4/Conv2D/BatchToSpaceND╣
%model/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv2d_4/BiasAdd/ReadVariableOpн
model/conv2d_4/BiasAddBiasAdd-model/conv2d_4/Conv2D/BatchToSpaceND:output:0-model/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ▀2
model/conv2d_4/BiasAddе
"model/tf.nn.leaky_relu_4/LeakyRelu	LeakyRelumodel/conv2d_4/BiasAdd:output:0*0
_output_shapes
:         ▀2$
"model/tf.nn.leaky_relu_4/LeakyReluЏ
#model/conv2d_5/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"       2%
#model/conv2d_5/Conv2D/dilation_rate┘
Bmodel/conv2d_5/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"▀     2D
Bmodel/conv2d_5/Conv2D/required_space_to_batch_paddings/input_shapeь
Dmodel/conv2d_5/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2F
Dmodel/conv2d_5/Conv2D/required_space_to_batch_paddings/base_paddingsс
?model/conv2d_5/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2A
?model/conv2d_5/Conv2D/required_space_to_batch_paddings/paddingsП
<model/conv2d_5/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2>
<model/conv2d_5/Conv2D/required_space_to_batch_paddings/cropsх
0model/conv2d_5/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0model/conv2d_5/Conv2D/SpaceToBatchND/block_shape┐
-model/conv2d_5/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-model/conv2d_5/Conv2D/SpaceToBatchND/paddingsй
$model/conv2d_5/Conv2D/SpaceToBatchNDSpaceToBatchND0model/tf.nn.leaky_relu_4/LeakyRelu:activations:09model/conv2d_5/Conv2D/SpaceToBatchND/block_shape:output:06model/conv2d_5/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2&
$model/conv2d_5/Conv2D/SpaceToBatchND┬
$model/conv2d_5/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model/conv2d_5/Conv2D/ReadVariableOpЭ
model/conv2d_5/Conv2DConv2D-model/conv2d_5/Conv2D/SpaceToBatchND:output:0,model/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
model/conv2d_5/Conv2Dх
0model/conv2d_5/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0model/conv2d_5/Conv2D/BatchToSpaceND/block_shape╣
*model/conv2d_5/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2,
*model/conv2d_5/Conv2D/BatchToSpaceND/cropsЕ
$model/conv2d_5/Conv2D/BatchToSpaceNDBatchToSpaceNDmodel/conv2d_5/Conv2D:output:09model/conv2d_5/Conv2D/BatchToSpaceND/block_shape:output:03model/conv2d_5/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ┐2&
$model/conv2d_5/Conv2D/BatchToSpaceND╣
%model/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv2d_5/BiasAdd/ReadVariableOpн
model/conv2d_5/BiasAddBiasAdd-model/conv2d_5/Conv2D/BatchToSpaceND:output:0-model/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ┐2
model/conv2d_5/BiasAddе
"model/tf.nn.leaky_relu_5/LeakyRelu	LeakyRelumodel/conv2d_5/BiasAdd:output:0*0
_output_shapes
:         ┐2$
"model/tf.nn.leaky_relu_5/LeakyReluЏ
#model/conv2d_6/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"@      2%
#model/conv2d_6/Conv2D/dilation_rate┘
Bmodel/conv2d_6/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"┐     2D
Bmodel/conv2d_6/Conv2D/required_space_to_batch_paddings/input_shapeь
Dmodel/conv2d_6/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2F
Dmodel/conv2d_6/Conv2D/required_space_to_batch_paddings/base_paddingsс
?model/conv2d_6/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2A
?model/conv2d_6/Conv2D/required_space_to_batch_paddings/paddingsП
<model/conv2d_6/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2>
<model/conv2d_6/Conv2D/required_space_to_batch_paddings/cropsх
0model/conv2d_6/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"@      22
0model/conv2d_6/Conv2D/SpaceToBatchND/block_shape┐
-model/conv2d_6/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-model/conv2d_6/Conv2D/SpaceToBatchND/paddingsй
$model/conv2d_6/Conv2D/SpaceToBatchNDSpaceToBatchND0model/tf.nn.leaky_relu_5/LeakyRelu:activations:09model/conv2d_6/Conv2D/SpaceToBatchND/block_shape:output:06model/conv2d_6/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2&
$model/conv2d_6/Conv2D/SpaceToBatchND┬
$model/conv2d_6/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model/conv2d_6/Conv2D/ReadVariableOpЭ
model/conv2d_6/Conv2DConv2D-model/conv2d_6/Conv2D/SpaceToBatchND:output:0,model/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
model/conv2d_6/Conv2Dх
0model/conv2d_6/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"@      22
0model/conv2d_6/Conv2D/BatchToSpaceND/block_shape╣
*model/conv2d_6/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2,
*model/conv2d_6/Conv2D/BatchToSpaceND/cropsЕ
$model/conv2d_6/Conv2D/BatchToSpaceNDBatchToSpaceNDmodel/conv2d_6/Conv2D:output:09model/conv2d_6/Conv2D/BatchToSpaceND/block_shape:output:03model/conv2d_6/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:          2&
$model/conv2d_6/Conv2D/BatchToSpaceND╣
%model/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv2d_6/BiasAdd/ReadVariableOpн
model/conv2d_6/BiasAddBiasAdd-model/conv2d_6/Conv2D/BatchToSpaceND:output:0-model/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2
model/conv2d_6/BiasAddе
"model/tf.nn.leaky_relu_6/LeakyRelu	LeakyRelumodel/conv2d_6/BiasAdd:output:0*0
_output_shapes
:          2$
"model/tf.nn.leaky_relu_6/LeakyReluЏ
#model/conv2d_7/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"ђ      2%
#model/conv2d_7/Conv2D/dilation_rate┘
Bmodel/conv2d_7/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"     2D
Bmodel/conv2d_7/Conv2D/required_space_to_batch_paddings/input_shapeь
Dmodel/conv2d_7/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                2F
Dmodel/conv2d_7/Conv2D/required_space_to_batch_paddings/base_paddingsс
?model/conv2d_7/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2A
?model/conv2d_7/Conv2D/required_space_to_batch_paddings/paddingsП
<model/conv2d_7/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2>
<model/conv2d_7/Conv2D/required_space_to_batch_paddings/cropsх
0model/conv2d_7/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      22
0model/conv2d_7/Conv2D/SpaceToBatchND/block_shape┐
-model/conv2d_7/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-model/conv2d_7/Conv2D/SpaceToBatchND/paddingsй
$model/conv2d_7/Conv2D/SpaceToBatchNDSpaceToBatchND0model/tf.nn.leaky_relu_6/LeakyRelu:activations:09model/conv2d_7/Conv2D/SpaceToBatchND/block_shape:output:06model/conv2d_7/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2&
$model/conv2d_7/Conv2D/SpaceToBatchND┬
$model/conv2d_7/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model/conv2d_7/Conv2D/ReadVariableOpЭ
model/conv2d_7/Conv2DConv2D-model/conv2d_7/Conv2D/SpaceToBatchND:output:0,model/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
model/conv2d_7/Conv2Dх
0model/conv2d_7/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      22
0model/conv2d_7/Conv2D/BatchToSpaceND/block_shape╣
*model/conv2d_7/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2,
*model/conv2d_7/Conv2D/BatchToSpaceND/cropsЕ
$model/conv2d_7/Conv2D/BatchToSpaceNDBatchToSpaceNDmodel/conv2d_7/Conv2D:output:09model/conv2d_7/Conv2D/BatchToSpaceND/block_shape:output:03model/conv2d_7/Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:          2&
$model/conv2d_7/Conv2D/BatchToSpaceND╣
%model/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv2d_7/BiasAdd/ReadVariableOpн
model/conv2d_7/BiasAddBiasAdd-model/conv2d_7/Conv2D/BatchToSpaceND:output:0-model/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2
model/conv2d_7/BiasAddе
"model/tf.nn.leaky_relu_7/LeakyRelu	LeakyRelumodel/conv2d_7/BiasAdd:output:0*0
_output_shapes
:          2$
"model/tf.nn.leaky_relu_7/LeakyRelu┬
$model/conv2d_8/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model/conv2d_8/Conv2D/ReadVariableOpЧ
model/conv2d_8/Conv2DConv2D0model/tf.nn.leaky_relu_7/LeakyRelu:activations:0,model/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:          *
paddingVALID*
strides
2
model/conv2d_8/Conv2D╣
%model/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv2d_8/BiasAdd/ReadVariableOp┼
model/conv2d_8/BiasAddBiasAddmodel/conv2d_8/Conv2D:output:0-model/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2
model/conv2d_8/BiasAdd}
model/reshape_1/ShapeShapemodel/conv2d_8/BiasAdd:output:0*
T0*
_output_shapes
:2
model/reshape_1/Shapeћ
#model/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#model/reshape_1/strided_slice/stackў
%model/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%model/reshape_1/strided_slice/stack_1ў
%model/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model/reshape_1/strided_slice/stack_2┬
model/reshape_1/strided_sliceStridedSlicemodel/reshape_1/Shape:output:0,model/reshape_1/strided_slice/stack:output:0.model/reshape_1/strided_slice/stack_1:output:0.model/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model/reshape_1/strided_sliceЁ
model/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B : 2!
model/reshape_1/Reshape/shape/1ё
model/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2!
model/reshape_1/Reshape/shape/2­
model/reshape_1/Reshape/shapePack&model/reshape_1/strided_slice:output:0(model/reshape_1/Reshape/shape/1:output:0(model/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
model/reshape_1/Reshape/shapeй
model/reshape_1/ReshapeReshapemodel/conv2d_8/BiasAdd:output:0&model/reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:          2
model/reshape_1/Reshape╝
IdentityIdentity model/reshape_1/Reshape:output:0$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp&^model/conv2d_2/BiasAdd/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp&^model/conv2d_3/BiasAdd/ReadVariableOp%^model/conv2d_3/Conv2D/ReadVariableOp&^model/conv2d_4/BiasAdd/ReadVariableOp%^model/conv2d_4/Conv2D/ReadVariableOp&^model/conv2d_5/BiasAdd/ReadVariableOp%^model/conv2d_5/Conv2D/ReadVariableOp&^model/conv2d_6/BiasAdd/ReadVariableOp%^model/conv2d_6/Conv2D/ReadVariableOp&^model/conv2d_7/BiasAdd/ReadVariableOp%^model/conv2d_7/Conv2D/ReadVariableOp&^model/conv2d_8/BiasAdd/ReadVariableOp%^model/conv2d_8/Conv2D/ReadVariableOp*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2N
%model/conv2d_2/BiasAdd/ReadVariableOp%model/conv2d_2/BiasAdd/ReadVariableOp2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2N
%model/conv2d_3/BiasAdd/ReadVariableOp%model/conv2d_3/BiasAdd/ReadVariableOp2L
$model/conv2d_3/Conv2D/ReadVariableOp$model/conv2d_3/Conv2D/ReadVariableOp2N
%model/conv2d_4/BiasAdd/ReadVariableOp%model/conv2d_4/BiasAdd/ReadVariableOp2L
$model/conv2d_4/Conv2D/ReadVariableOp$model/conv2d_4/Conv2D/ReadVariableOp2N
%model/conv2d_5/BiasAdd/ReadVariableOp%model/conv2d_5/BiasAdd/ReadVariableOp2L
$model/conv2d_5/Conv2D/ReadVariableOp$model/conv2d_5/Conv2D/ReadVariableOp2N
%model/conv2d_6/BiasAdd/ReadVariableOp%model/conv2d_6/BiasAdd/ReadVariableOp2L
$model/conv2d_6/Conv2D/ReadVariableOp$model/conv2d_6/Conv2D/ReadVariableOp2N
%model/conv2d_7/BiasAdd/ReadVariableOp%model/conv2d_7/BiasAdd/ReadVariableOp2L
$model/conv2d_7/Conv2D/ReadVariableOp$model/conv2d_7/Conv2D/ReadVariableOp2N
%model/conv2d_8/BiasAdd/ReadVariableOp%model/conv2d_8/BiasAdd/ReadVariableOp2L
$model/conv2d_8/Conv2D/ReadVariableOp$model/conv2d_8/Conv2D/ReadVariableOp:U Q
,
_output_shapes
:          
!
_user_specified_name	input_1
§ 
╠
$__inference__traced_restore_11365470
file_prefix"
assignvariableop_conv2d_kernel"
assignvariableop_1_conv2d_bias&
"assignvariableop_2_conv2d_1_kernel$
 assignvariableop_3_conv2d_1_bias&
"assignvariableop_4_conv2d_2_kernel$
 assignvariableop_5_conv2d_2_bias&
"assignvariableop_6_conv2d_3_kernel$
 assignvariableop_7_conv2d_3_bias&
"assignvariableop_8_conv2d_4_kernel$
 assignvariableop_9_conv2d_4_bias'
#assignvariableop_10_conv2d_5_kernel%
!assignvariableop_11_conv2d_5_bias'
#assignvariableop_12_conv2d_6_kernel%
!assignvariableop_13_conv2d_6_bias'
#assignvariableop_14_conv2d_7_kernel%
!assignvariableop_15_conv2d_7_bias'
#assignvariableop_16_conv2d_8_kernel%
!assignvariableop_17_conv2d_8_bias!
assignvariableop_18_adam_iter#
assignvariableop_19_adam_beta_1#
assignvariableop_20_adam_beta_2"
assignvariableop_21_adam_decay*
&assignvariableop_22_adam_learning_rate
assignvariableop_23_total
assignvariableop_24_count,
(assignvariableop_25_adam_conv2d_kernel_m*
&assignvariableop_26_adam_conv2d_bias_m.
*assignvariableop_27_adam_conv2d_1_kernel_m,
(assignvariableop_28_adam_conv2d_1_bias_m.
*assignvariableop_29_adam_conv2d_2_kernel_m,
(assignvariableop_30_adam_conv2d_2_bias_m.
*assignvariableop_31_adam_conv2d_3_kernel_m,
(assignvariableop_32_adam_conv2d_3_bias_m.
*assignvariableop_33_adam_conv2d_4_kernel_m,
(assignvariableop_34_adam_conv2d_4_bias_m.
*assignvariableop_35_adam_conv2d_5_kernel_m,
(assignvariableop_36_adam_conv2d_5_bias_m.
*assignvariableop_37_adam_conv2d_6_kernel_m,
(assignvariableop_38_adam_conv2d_6_bias_m.
*assignvariableop_39_adam_conv2d_7_kernel_m,
(assignvariableop_40_adam_conv2d_7_bias_m.
*assignvariableop_41_adam_conv2d_8_kernel_m,
(assignvariableop_42_adam_conv2d_8_bias_m,
(assignvariableop_43_adam_conv2d_kernel_v*
&assignvariableop_44_adam_conv2d_bias_v.
*assignvariableop_45_adam_conv2d_1_kernel_v,
(assignvariableop_46_adam_conv2d_1_bias_v.
*assignvariableop_47_adam_conv2d_2_kernel_v,
(assignvariableop_48_adam_conv2d_2_bias_v.
*assignvariableop_49_adam_conv2d_3_kernel_v,
(assignvariableop_50_adam_conv2d_3_bias_v.
*assignvariableop_51_adam_conv2d_4_kernel_v,
(assignvariableop_52_adam_conv2d_4_bias_v.
*assignvariableop_53_adam_conv2d_5_kernel_v,
(assignvariableop_54_adam_conv2d_5_bias_v.
*assignvariableop_55_adam_conv2d_6_kernel_v,
(assignvariableop_56_adam_conv2d_6_bias_v.
*assignvariableop_57_adam_conv2d_7_kernel_v,
(assignvariableop_58_adam_conv2d_7_bias_v.
*assignvariableop_59_adam_conv2d_8_kernel_v,
(assignvariableop_60_adam_conv2d_8_bias_v
identity_62ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_48бAssignVariableOp_49бAssignVariableOp_5бAssignVariableOp_50бAssignVariableOp_51бAssignVariableOp_52бAssignVariableOp_53бAssignVariableOp_54бAssignVariableOp_55бAssignVariableOp_56бAssignVariableOp_57бAssignVariableOp_58бAssignVariableOp_59бAssignVariableOp_6бAssignVariableOp_60бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ѓ#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*ј"
valueё"BЂ">B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЇ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*Љ
valueЄBё>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesС
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ј
_output_shapesч
Э::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЮ
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Б
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Д
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ц
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Д
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ц
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Д
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ц
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Д
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ц
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ф
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Е
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ф
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Е
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ф
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_7_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Е
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv2d_7_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ф
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv2d_8_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Е
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv2d_8_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_18Ц
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Д
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Д
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21д
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22«
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23А
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24А
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25░
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26«
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_conv2d_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27▓
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_1_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28░
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_1_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29▓
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30░
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31▓
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv2d_3_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32░
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_3_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33▓
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_4_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34░
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv2d_4_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35▓
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_5_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36░
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_5_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37▓
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_6_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38░
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv2d_6_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39▓
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_conv2d_7_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40░
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_conv2d_7_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41▓
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_conv2d_8_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42░
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_conv2d_8_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43░
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_conv2d_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44«
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_conv2d_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45▓
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_conv2d_1_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46░
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_conv2d_1_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47▓
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_conv2d_2_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48░
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_conv2d_2_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49▓
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_conv2d_3_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50░
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_conv2d_3_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51▓
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_conv2d_4_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52░
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_conv2d_4_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53▓
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_conv2d_5_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54░
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_conv2d_5_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55▓
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_conv2d_6_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56░
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_conv2d_6_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57▓
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_conv2d_7_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58░
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_conv2d_7_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59▓
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_conv2d_8_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60░
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_conv2d_8_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_609
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpю
Identity_61Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_61Ј
Identity_62IdentityIdentity_61:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_62"#
identity_62Identity_62:output:0*І
_input_shapesщ
Ш: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
­	
П
D__inference_conv2d_layer_call_and_return_conditional_losses_11364815

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         §*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         §2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         §2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ■::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ■
 
_user_specified_nameinputs
и
H
,__inference_reshape_1_layer_call_fn_11365071

inputs
identity═
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_reshape_1_layer_call_and_return_conditional_losses_113640502
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*/
_input_shapes
:          :X T
0
_output_shapes
:          
 
_user_specified_nameinputs
йC
х
C__inference_model_layer_call_and_return_conditional_losses_11364286

inputs
conv2d_11364231
conv2d_11364233
conv2d_1_11364237
conv2d_1_11364239
conv2d_2_11364243
conv2d_2_11364245
conv2d_3_11364249
conv2d_3_11364251
conv2d_4_11364255
conv2d_4_11364257
conv2d_5_11364261
conv2d_5_11364263
conv2d_6_11364267
conv2d_6_11364269
conv2d_7_11364273
conv2d_7_11364275
conv2d_8_11364279
conv2d_8_11364281
identityѕбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallб conv2d_2/StatefulPartitionedCallб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallб conv2d_6/StatefulPartitionedCallб conv2d_7/StatefulPartitionedCallб conv2d_8/StatefulPartitionedCallp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axisа
tf.concat/concatConcatV2inputsinputstf.concat/concat/axis:output:0*
N*
T0*,
_output_shapes
:         ■2
tf.concat/concatЫ
reshape/PartitionedCallPartitionedCalltf.concat/concat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ■* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_113637102
reshape/PartitionedCallХ
conv2d/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_11364231conv2d_11364233*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         §*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_113637282 
conv2d/StatefulPartitionedCallа
tf.nn.leaky_relu/LeakyRelu	LeakyRelu'conv2d/StatefulPartitionedCall:output:0*0
_output_shapes
:         §2
tf.nn.leaky_relu/LeakyRelu╚
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(tf.nn.leaky_relu/LeakyRelu:activations:0conv2d_1_11364237conv2d_1_11364239*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ч*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_113637662"
 conv2d_1/StatefulPartitionedCallд
tf.nn.leaky_relu_1/LeakyRelu	LeakyRelu)conv2d_1/StatefulPartitionedCall:output:0*0
_output_shapes
:         ч2
tf.nn.leaky_relu_1/LeakyRelu╩
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_1/LeakyRelu:activations:0conv2d_2_11364243conv2d_2_11364245*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         э*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_113638042"
 conv2d_2/StatefulPartitionedCallд
tf.nn.leaky_relu_2/LeakyRelu	LeakyRelu)conv2d_2/StatefulPartitionedCall:output:0*0
_output_shapes
:         э2
tf.nn.leaky_relu_2/LeakyRelu╩
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_2/LeakyRelu:activations:0conv2d_3_11364249conv2d_3_11364251*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         №*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_113638422"
 conv2d_3/StatefulPartitionedCallд
tf.nn.leaky_relu_3/LeakyRelu	LeakyRelu)conv2d_3/StatefulPartitionedCall:output:0*0
_output_shapes
:         №2
tf.nn.leaky_relu_3/LeakyRelu╩
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_3/LeakyRelu:activations:0conv2d_4_11364255conv2d_4_11364257*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ▀*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_113638802"
 conv2d_4/StatefulPartitionedCallд
tf.nn.leaky_relu_4/LeakyRelu	LeakyRelu)conv2d_4/StatefulPartitionedCall:output:0*0
_output_shapes
:         ▀2
tf.nn.leaky_relu_4/LeakyRelu╩
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_4/LeakyRelu:activations:0conv2d_5_11364261conv2d_5_11364263*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ┐*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_5_layer_call_and_return_conditional_losses_113639182"
 conv2d_5/StatefulPartitionedCallд
tf.nn.leaky_relu_5/LeakyRelu	LeakyRelu)conv2d_5/StatefulPartitionedCall:output:0*0
_output_shapes
:         ┐2
tf.nn.leaky_relu_5/LeakyRelu╩
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_5/LeakyRelu:activations:0conv2d_6_11364267conv2d_6_11364269*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_6_layer_call_and_return_conditional_losses_113639562"
 conv2d_6/StatefulPartitionedCallд
tf.nn.leaky_relu_6/LeakyRelu	LeakyRelu)conv2d_6/StatefulPartitionedCall:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_6/LeakyRelu╩
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_6/LeakyRelu:activations:0conv2d_7_11364273conv2d_7_11364275*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_7_layer_call_and_return_conditional_losses_113639942"
 conv2d_7/StatefulPartitionedCallд
tf.nn.leaky_relu_7/LeakyRelu	LeakyRelu)conv2d_7/StatefulPartitionedCall:output:0*0
_output_shapes
:          2
tf.nn.leaky_relu_7/LeakyRelu╩
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall*tf.nn.leaky_relu_7/LeakyRelu:activations:0conv2d_8_11364279conv2d_8_11364281*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_8_layer_call_and_return_conditional_losses_113640212"
 conv2d_8/StatefulPartitionedCallё
reshape_1/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_reshape_1_layer_call_and_return_conditional_losses_113640502
reshape_1/PartitionedCall┤
IdentityIdentity"reshape_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall:T P
,
_output_shapes
:          
 
_user_specified_nameinputs
Ы	
▀
F__inference_conv2d_8_layer_call_and_return_conditional_losses_11364021

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:          *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:          2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:          2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:          ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:          
 
_user_specified_nameinputs
С
▀
F__inference_conv2d_1_layer_call_and_return_conditional_losses_11363766

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"§     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsп
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*0
_output_shapes
:          2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpй
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ■*
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ч2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ч2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ч2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         §::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         §
 
_user_specified_nameinputs
ђ
З
(__inference_model_layer_call_fn_11364786

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityѕбStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:          *4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_113642862
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:          2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:          ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:          
 
_user_specified_nameinputs
Р
▀
F__inference_conv2d_4_layer_call_and_return_conditional_losses_11364935

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
Conv2D/dilation_rate╗
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"№     25
3Conv2D/required_space_to_batch_paddings/input_shape¤
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                27
5Conv2D/required_space_to_batch_paddings/base_paddings┼
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               22
0Conv2D/required_space_to_batch_paddings/paddings┐
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2/
-Conv2D/required_space_to_batch_paddings/cropsЌ
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/SpaceToBatchND/block_shapeА
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               2 
Conv2D/SpaceToBatchND/paddingsО
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:         2
Conv2D/SpaceToBatchNDЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp╝
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2DЌ
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2#
!Conv2D/BatchToSpaceND/block_shapeЏ
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"               2
Conv2D/BatchToSpaceND/cropsя
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*0
_output_shapes
:         ▀2
Conv2D/BatchToSpaceNDї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpў
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ▀2	
BiasAddъ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ▀2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         №::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         №
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Х
serving_defaultб
@
input_15
serving_default_input_1:0          B
	reshape_15
StatefulPartitionedCall:0          tensorflow/serving/predict:▒М
ЋБ
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer_with_weights-6
layer-15
layer-16
layer_with_weights-7
layer-17
layer-18
layer_with_weights-8
layer-19
layer-20
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
═__call__
╬_default_save_signature
+¤&call_and_return_all_conditional_losses"└Ю
_tf_keras_networkБЮ{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 255, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat", "inbound_nodes": [[["input_1", 0, 0, {"axis": 1}], ["input_1", 0, 0, {"axis": 1}]]]}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [510, 1, 3]}}, "name": "reshape", "inbound_nodes": [[["tf.concat", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu", "inbound_nodes": [["conv2d", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [2, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["tf.nn.leaky_relu", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_1", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_1", "inbound_nodes": [["conv2d_1", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [4, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_2", "inbound_nodes": [[["tf.nn.leaky_relu_1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_2", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_2", "inbound_nodes": [["conv2d_2", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [8, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_3", "inbound_nodes": [[["tf.nn.leaky_relu_2", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_3", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_3", "inbound_nodes": [["conv2d_3", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [16, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_4", "inbound_nodes": [[["tf.nn.leaky_relu_3", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_4", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_4", "inbound_nodes": [["conv2d_4", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [32, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_5", "inbound_nodes": [[["tf.nn.leaky_relu_4", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_5", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_5", "inbound_nodes": [["conv2d_5", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [64, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_6", "inbound_nodes": [[["tf.nn.leaky_relu_5", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_6", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_6", "inbound_nodes": [["conv2d_6", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [128, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_7", "inbound_nodes": [[["tf.nn.leaky_relu_6", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_7", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_7", "inbound_nodes": [["conv2d_7", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_8", "inbound_nodes": [[["tf.nn.leaky_relu_7", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [255, 3]}}, "name": "reshape_1", "inbound_nodes": [[["conv2d_8", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["reshape_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 255, 3]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 255, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 255, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat", "inbound_nodes": [[["input_1", 0, 0, {"axis": 1}], ["input_1", 0, 0, {"axis": 1}]]]}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [510, 1, 3]}}, "name": "reshape", "inbound_nodes": [[["tf.concat", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["reshape", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu", "inbound_nodes": [["conv2d", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [2, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["tf.nn.leaky_relu", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_1", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_1", "inbound_nodes": [["conv2d_1", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [4, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_2", "inbound_nodes": [[["tf.nn.leaky_relu_1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_2", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_2", "inbound_nodes": [["conv2d_2", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [8, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_3", "inbound_nodes": [[["tf.nn.leaky_relu_2", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_3", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_3", "inbound_nodes": [["conv2d_3", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [16, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_4", "inbound_nodes": [[["tf.nn.leaky_relu_3", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_4", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_4", "inbound_nodes": [["conv2d_4", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [32, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_5", "inbound_nodes": [[["tf.nn.leaky_relu_4", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_5", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_5", "inbound_nodes": [["conv2d_5", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [64, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_6", "inbound_nodes": [[["tf.nn.leaky_relu_5", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_6", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_6", "inbound_nodes": [["conv2d_6", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [128, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_7", "inbound_nodes": [[["tf.nn.leaky_relu_6", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.leaky_relu_7", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}, "name": "tf.nn.leaky_relu_7", "inbound_nodes": [["conv2d_7", 0, 0, {"alpha": 0.2}]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_8", "inbound_nodes": [[["tf.nn.leaky_relu_7", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [255, 3]}}, "name": "reshape_1", "inbound_nodes": [[["conv2d_8", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["reshape_1", 0, 0]]}}, "training_config": {"loss": {"class_name": "Huber", "config": {"reduction": "auto", "name": "huber_loss", "delta": 1.0}}, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.004000000189989805, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
з"­
_tf_keras_input_layerл{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 255, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 255, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
Л
	keras_api"┐
_tf_keras_layerЦ{"class_name": "TFOpLambda", "name": "tf.concat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.concat", "trainable": true, "dtype": "float32", "function": "concat"}}
э
trainable_variables
	variables
regularization_losses
 	keras_api
л__call__
+Л&call_and_return_all_conditional_losses"Т
_tf_keras_layer╠{"class_name": "Reshape", "name": "reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [510, 1, 3]}}}
ы	

!kernel
"bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api
м__call__
+М&call_and_return_all_conditional_losses"╩
_tf_keras_layer░{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 510, 1, 3]}}
Т
'	keras_api"н
_tf_keras_layer║{"class_name": "TFOpLambda", "name": "tf.nn.leaky_relu", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.nn.leaky_relu", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}}
э	

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
н__call__
+Н&call_and_return_all_conditional_losses"л
_tf_keras_layerХ{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [2, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 509, 1, 20]}}
Ж
.	keras_api"п
_tf_keras_layerЙ{"class_name": "TFOpLambda", "name": "tf.nn.leaky_relu_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.nn.leaky_relu_1", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}}
э	

/kernel
0bias
1trainable_variables
2	variables
3regularization_losses
4	keras_api
о__call__
+О&call_and_return_all_conditional_losses"л
_tf_keras_layerХ{"class_name": "Conv2D", "name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [4, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 507, 1, 20]}}
Ж
5	keras_api"п
_tf_keras_layerЙ{"class_name": "TFOpLambda", "name": "tf.nn.leaky_relu_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.nn.leaky_relu_2", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}}
э	

6kernel
7bias
8trainable_variables
9	variables
:regularization_losses
;	keras_api
п__call__
+┘&call_and_return_all_conditional_losses"л
_tf_keras_layerХ{"class_name": "Conv2D", "name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [8, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 503, 1, 20]}}
Ж
<	keras_api"п
_tf_keras_layerЙ{"class_name": "TFOpLambda", "name": "tf.nn.leaky_relu_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.nn.leaky_relu_3", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}}
Э	

=kernel
>bias
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
┌__call__
+█&call_and_return_all_conditional_losses"Л
_tf_keras_layerи{"class_name": "Conv2D", "name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [16, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 495, 1, 20]}}
Ж
C	keras_api"п
_tf_keras_layerЙ{"class_name": "TFOpLambda", "name": "tf.nn.leaky_relu_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.nn.leaky_relu_4", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}}
Э	

Dkernel
Ebias
Ftrainable_variables
G	variables
Hregularization_losses
I	keras_api
▄__call__
+П&call_and_return_all_conditional_losses"Л
_tf_keras_layerи{"class_name": "Conv2D", "name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [32, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 479, 1, 20]}}
Ж
J	keras_api"п
_tf_keras_layerЙ{"class_name": "TFOpLambda", "name": "tf.nn.leaky_relu_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.nn.leaky_relu_5", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}}
Э	

Kkernel
Lbias
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api
я__call__
+▀&call_and_return_all_conditional_losses"Л
_tf_keras_layerи{"class_name": "Conv2D", "name": "conv2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [64, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 447, 1, 20]}}
Ж
Q	keras_api"п
_tf_keras_layerЙ{"class_name": "TFOpLambda", "name": "tf.nn.leaky_relu_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.nn.leaky_relu_6", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}}
щ	

Rkernel
Sbias
Ttrainable_variables
U	variables
Vregularization_losses
W	keras_api
Я__call__
+р&call_and_return_all_conditional_losses"м
_tf_keras_layerИ{"class_name": "Conv2D", "name": "conv2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [2, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [128, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 383, 1, 20]}}
Ж
X	keras_api"п
_tf_keras_layerЙ{"class_name": "TFOpLambda", "name": "tf.nn.leaky_relu_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.nn.leaky_relu_7", "trainable": true, "dtype": "float32", "function": "nn.leaky_relu"}}
Ш	

Ykernel
Zbias
[trainable_variables
\	variables
]regularization_losses
^	keras_api
Р__call__
+с&call_and_return_all_conditional_losses"¤
_tf_keras_layerх{"class_name": "Conv2D", "name": "conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 255, 1, 20]}}
Э
_trainable_variables
`	variables
aregularization_losses
b	keras_api
С__call__
+т&call_and_return_all_conditional_losses"у
_tf_keras_layer═{"class_name": "Reshape", "name": "reshape_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_1", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [255, 3]}}}
╗
citer

dbeta_1

ebeta_2
	fdecay
glearning_rate!mЕ"mф(mФ)mг/mГ0m«6m»7m░=m▒>m▓Dm│Em┤KmхLmХRmиSmИYm╣Zm║!v╗"v╝(vй)vЙ/v┐0v└6v┴7v┬=v├>v─Dv┼EvкKvКLv╚Rv╔Sv╩Yv╦Zv╠"
	optimizer
д
!0
"1
(2
)3
/4
05
66
77
=8
>9
D10
E11
K12
L13
R14
S15
Y16
Z17"
trackable_list_wrapper
д
!0
"1
(2
)3
/4
05
66
77
=8
>9
D10
E11
K12
L13
R14
S15
Y16
Z17"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
hlayer_metrics
ilayer_regularization_losses
trainable_variables
jmetrics
	variables

klayers
regularization_losses
lnon_trainable_variables
═__call__
╬_default_save_signature
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
-
Тserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
mlayer_metrics
nlayer_regularization_losses
trainable_variables
ometrics
	variables

players
regularization_losses
qnon_trainable_variables
л__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
':%2conv2d/kernel
:2conv2d/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
rlayer_metrics
slayer_regularization_losses
#trainable_variables
tmetrics
$	variables

ulayers
%regularization_losses
vnon_trainable_variables
м__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
):'2conv2d_1/kernel
:2conv2d_1/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
wlayer_metrics
xlayer_regularization_losses
*trainable_variables
ymetrics
+	variables

zlayers
,regularization_losses
{non_trainable_variables
н__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
):'2conv2d_2/kernel
:2conv2d_2/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
▒
|layer_metrics
}layer_regularization_losses
1trainable_variables
~metrics
2	variables

layers
3regularization_losses
ђnon_trainable_variables
о__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
):'2conv2d_3/kernel
:2conv2d_3/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
х
Ђlayer_metrics
 ѓlayer_regularization_losses
8trainable_variables
Ѓmetrics
9	variables
ёlayers
:regularization_losses
Ёnon_trainable_variables
п__call__
+┘&call_and_return_all_conditional_losses
'┘"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
):'2conv2d_4/kernel
:2conv2d_4/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
єlayer_metrics
 Єlayer_regularization_losses
?trainable_variables
ѕmetrics
@	variables
Ѕlayers
Aregularization_losses
іnon_trainable_variables
┌__call__
+█&call_and_return_all_conditional_losses
'█"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
):'2conv2d_5/kernel
:2conv2d_5/bias
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
Іlayer_metrics
 їlayer_regularization_losses
Ftrainable_variables
Їmetrics
G	variables
јlayers
Hregularization_losses
Јnon_trainable_variables
▄__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
):'2conv2d_6/kernel
:2conv2d_6/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
љlayer_metrics
 Љlayer_regularization_losses
Mtrainable_variables
њmetrics
N	variables
Њlayers
Oregularization_losses
ћnon_trainable_variables
я__call__
+▀&call_and_return_all_conditional_losses
'▀"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
):'2conv2d_7/kernel
:2conv2d_7/bias
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
Ћlayer_metrics
 ќlayer_regularization_losses
Ttrainable_variables
Ќmetrics
U	variables
ўlayers
Vregularization_losses
Ўnon_trainable_variables
Я__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
):'2conv2d_8/kernel
:2conv2d_8/bias
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
џlayer_metrics
 Џlayer_regularization_losses
[trainable_variables
юmetrics
\	variables
Юlayers
]regularization_losses
ъnon_trainable_variables
Р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Ъlayer_metrics
 аlayer_regularization_losses
_trainable_variables
Аmetrics
`	variables
бlayers
aregularization_losses
Бnon_trainable_variables
С__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
ц0"
trackable_list_wrapper
Й
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20"
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
┐

Цtotal

дcount
Д	variables
е	keras_api"ё
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
0
Ц0
д1"
trackable_list_wrapper
.
Д	variables"
_generic_user_object
,:*2Adam/conv2d/kernel/m
:2Adam/conv2d/bias/m
.:,2Adam/conv2d_1/kernel/m
 :2Adam/conv2d_1/bias/m
.:,2Adam/conv2d_2/kernel/m
 :2Adam/conv2d_2/bias/m
.:,2Adam/conv2d_3/kernel/m
 :2Adam/conv2d_3/bias/m
.:,2Adam/conv2d_4/kernel/m
 :2Adam/conv2d_4/bias/m
.:,2Adam/conv2d_5/kernel/m
 :2Adam/conv2d_5/bias/m
.:,2Adam/conv2d_6/kernel/m
 :2Adam/conv2d_6/bias/m
.:,2Adam/conv2d_7/kernel/m
 :2Adam/conv2d_7/bias/m
.:,2Adam/conv2d_8/kernel/m
 :2Adam/conv2d_8/bias/m
,:*2Adam/conv2d/kernel/v
:2Adam/conv2d/bias/v
.:,2Adam/conv2d_1/kernel/v
 :2Adam/conv2d_1/bias/v
.:,2Adam/conv2d_2/kernel/v
 :2Adam/conv2d_2/bias/v
.:,2Adam/conv2d_3/kernel/v
 :2Adam/conv2d_3/bias/v
.:,2Adam/conv2d_4/kernel/v
 :2Adam/conv2d_4/bias/v
.:,2Adam/conv2d_5/kernel/v
 :2Adam/conv2d_5/bias/v
.:,2Adam/conv2d_6/kernel/v
 :2Adam/conv2d_6/bias/v
.:,2Adam/conv2d_7/kernel/v
 :2Adam/conv2d_7/bias/v
.:,2Adam/conv2d_8/kernel/v
 :2Adam/conv2d_8/bias/v
Ь2в
(__inference_model_layer_call_fn_11364745
(__inference_model_layer_call_fn_11364325
(__inference_model_layer_call_fn_11364223
(__inference_model_layer_call_fn_11364786└
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
Т2с
#__inference__wrapped_model_11363690╗
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
annotationsф *+б(
&і#
input_1          
┌2О
C__inference_model_layer_call_and_return_conditional_losses_11364540
C__inference_model_layer_call_and_return_conditional_losses_11364704
C__inference_model_layer_call_and_return_conditional_losses_11364120
C__inference_model_layer_call_and_return_conditional_losses_11364059└
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
н2Л
*__inference_reshape_layer_call_fn_11364805б
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
№2В
E__inference_reshape_layer_call_and_return_conditional_losses_11364800б
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
М2л
)__inference_conv2d_layer_call_fn_11364824б
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
Ь2в
D__inference_conv2d_layer_call_and_return_conditional_losses_11364815б
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
Н2м
+__inference_conv2d_1_layer_call_fn_11364854б
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
­2ь
F__inference_conv2d_1_layer_call_and_return_conditional_losses_11364845б
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
Н2м
+__inference_conv2d_2_layer_call_fn_11364884б
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
­2ь
F__inference_conv2d_2_layer_call_and_return_conditional_losses_11364875б
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
Н2м
+__inference_conv2d_3_layer_call_fn_11364914б
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
­2ь
F__inference_conv2d_3_layer_call_and_return_conditional_losses_11364905б
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
Н2м
+__inference_conv2d_4_layer_call_fn_11364944б
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
­2ь
F__inference_conv2d_4_layer_call_and_return_conditional_losses_11364935б
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
Н2м
+__inference_conv2d_5_layer_call_fn_11364974б
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
­2ь
F__inference_conv2d_5_layer_call_and_return_conditional_losses_11364965б
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
Н2м
+__inference_conv2d_6_layer_call_fn_11365004б
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
­2ь
F__inference_conv2d_6_layer_call_and_return_conditional_losses_11364995б
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
Н2м
+__inference_conv2d_7_layer_call_fn_11365034б
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
­2ь
F__inference_conv2d_7_layer_call_and_return_conditional_losses_11365025б
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
Н2м
+__inference_conv2d_8_layer_call_fn_11365053б
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
­2ь
F__inference_conv2d_8_layer_call_and_return_conditional_losses_11365044б
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
,__inference_reshape_1_layer_call_fn_11365071б
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
G__inference_reshape_1_layer_call_and_return_conditional_losses_11365066б
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
═B╩
&__inference_signature_wrapper_11364376input_1"ћ
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
 »
#__inference__wrapped_model_11363690Є!"()/067=>DEKLRSYZ5б2
+б(
&і#
input_1          
ф ":ф7
5
	reshape_1(і%
	reshape_1          И
F__inference_conv2d_1_layer_call_and_return_conditional_losses_11364845n()8б5
.б+
)і&
inputs         §
ф ".б+
$і!
0         ч
џ љ
+__inference_conv2d_1_layer_call_fn_11364854a()8б5
.б+
)і&
inputs         §
ф "!і         чИ
F__inference_conv2d_2_layer_call_and_return_conditional_losses_11364875n/08б5
.б+
)і&
inputs         ч
ф ".б+
$і!
0         э
џ љ
+__inference_conv2d_2_layer_call_fn_11364884a/08б5
.б+
)і&
inputs         ч
ф "!і         эИ
F__inference_conv2d_3_layer_call_and_return_conditional_losses_11364905n678б5
.б+
)і&
inputs         э
ф ".б+
$і!
0         №
џ љ
+__inference_conv2d_3_layer_call_fn_11364914a678б5
.б+
)і&
inputs         э
ф "!і         №И
F__inference_conv2d_4_layer_call_and_return_conditional_losses_11364935n=>8б5
.б+
)і&
inputs         №
ф ".б+
$і!
0         ▀
џ љ
+__inference_conv2d_4_layer_call_fn_11364944a=>8б5
.б+
)і&
inputs         №
ф "!і         ▀И
F__inference_conv2d_5_layer_call_and_return_conditional_losses_11364965nDE8б5
.б+
)і&
inputs         ▀
ф ".б+
$і!
0         ┐
џ љ
+__inference_conv2d_5_layer_call_fn_11364974aDE8б5
.б+
)і&
inputs         ▀
ф "!і         ┐И
F__inference_conv2d_6_layer_call_and_return_conditional_losses_11364995nKL8б5
.б+
)і&
inputs         ┐
ф ".б+
$і!
0          
џ љ
+__inference_conv2d_6_layer_call_fn_11365004aKL8б5
.б+
)і&
inputs         ┐
ф "!і          И
F__inference_conv2d_7_layer_call_and_return_conditional_losses_11365025nRS8б5
.б+
)і&
inputs          
ф ".б+
$і!
0          
џ љ
+__inference_conv2d_7_layer_call_fn_11365034aRS8б5
.б+
)і&
inputs          
ф "!і          И
F__inference_conv2d_8_layer_call_and_return_conditional_losses_11365044nYZ8б5
.б+
)і&
inputs          
ф ".б+
$і!
0          
џ љ
+__inference_conv2d_8_layer_call_fn_11365053aYZ8б5
.б+
)і&
inputs          
ф "!і          Х
D__inference_conv2d_layer_call_and_return_conditional_losses_11364815n!"8б5
.б+
)і&
inputs         ■
ф ".б+
$і!
0         §
џ ј
)__inference_conv2d_layer_call_fn_11364824a!"8б5
.б+
)і&
inputs         ■
ф "!і         §к
C__inference_model_layer_call_and_return_conditional_losses_11364059!"()/067=>DEKLRSYZ=б:
3б0
&і#
input_1          
p

 
ф "*б'
 і
0          
џ к
C__inference_model_layer_call_and_return_conditional_losses_11364120!"()/067=>DEKLRSYZ=б:
3б0
&і#
input_1          
p 

 
ф "*б'
 і
0          
џ ┼
C__inference_model_layer_call_and_return_conditional_losses_11364540~!"()/067=>DEKLRSYZ<б9
2б/
%і"
inputs          
p

 
ф "*б'
 і
0          
џ ┼
C__inference_model_layer_call_and_return_conditional_losses_11364704~!"()/067=>DEKLRSYZ<б9
2б/
%і"
inputs          
p 

 
ф "*б'
 і
0          
џ ъ
(__inference_model_layer_call_fn_11364223r!"()/067=>DEKLRSYZ=б:
3б0
&і#
input_1          
p

 
ф "і          ъ
(__inference_model_layer_call_fn_11364325r!"()/067=>DEKLRSYZ=б:
3б0
&і#
input_1          
p 

 
ф "і          Ю
(__inference_model_layer_call_fn_11364745q!"()/067=>DEKLRSYZ<б9
2б/
%і"
inputs          
p

 
ф "і          Ю
(__inference_model_layer_call_fn_11364786q!"()/067=>DEKLRSYZ<б9
2б/
%і"
inputs          
p 

 
ф "і          ▒
G__inference_reshape_1_layer_call_and_return_conditional_losses_11365066f8б5
.б+
)і&
inputs          
ф "*б'
 і
0          
џ Ѕ
,__inference_reshape_1_layer_call_fn_11365071Y8б5
.б+
)і&
inputs          
ф "і          »
E__inference_reshape_layer_call_and_return_conditional_losses_11364800f4б1
*б'
%і"
inputs         ■
ф ".б+
$і!
0         ■
џ Є
*__inference_reshape_layer_call_fn_11364805Y4б1
*б'
%і"
inputs         ■
ф "!і         ■й
&__inference_signature_wrapper_11364376њ!"()/067=>DEKLRSYZ@б=
б 
6ф3
1
input_1&і#
input_1          ":ф7
5
	reshape_1(і%
	reshape_1          