��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
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
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628¥
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *
�#<
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:2*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:2*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:22*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:2*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:22*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:2*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:22*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:2*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:2*
dtype0
�
serving_default_input_1Placeholder*+
_output_shapes
:���������?*
dtype0* 
shape:���������?
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasConst_1Const*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� @*,
_read_only_resource_inputs

	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� */
f*R(
&__inference_signature_wrapper_12077442

NoOpNoOp
�3
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*�3
value�3B�3 B�3
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*

_init_input_shape* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op*

(	keras_api* 
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op*

2	keras_api* 
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op*

<	keras_api* 
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias
 E_jit_compiled_convolution_op*

F	keras_api* 
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias
 O_jit_compiled_convolution_op*

P	keras_api* 

Q	keras_api* 

R	keras_api* 
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses* 
J
%0
&1
/2
03
94
:5
C6
D7
M8
N9*
J
%0
&1
/2
03
94
:5
C6
D7
M8
N9*
* 
�
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

^trace_0
_trace_1* 

`trace_0
atrace_1* 
"
b
capture_10
c
capture_11* 

dserving_default* 
* 
* 
* 
* 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

jtrace_0* 

ktrace_0* 

%0
&1*

%0
&1*
* 
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

qtrace_0* 

rtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

/0
01*

/0
01*
* 
�
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

xtrace_0* 

ytrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

90
:1*

90
:1*
* 
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

C0
D1*

C0
D1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

M0
N1*

M0
N1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
r
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
14*
* 
* 
* 
"
b
capture_10
c
capture_11* 
"
b
capture_10
c
capture_11* 
"
b
capture_10
c
capture_11* 
"
b
capture_10
c
capture_11* 
* 
* 
"
b
capture_10
c
capture_11* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasConst_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� **
f%R#
!__inference__traced_save_12077702
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *-
f(R&
$__inference__traced_restore_12077741��
�
F
*__inference_reshape_layer_call_fn_12077447

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������?* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_12077110h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?:S O
+
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
F__inference_conv2d_1_layer_call_and_return_conditional_losses_12077148

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOpe
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB">   |   �
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                r
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0�
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingVALID*
strides
r
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      |
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:���������<x2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<x2g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������<x2S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>|2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������>|2
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_12077442
input_1!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2#
	unknown_5:22
	unknown_6:2#
	unknown_7:2
	unknown_8:
	unknown_9

unknown_10
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� @*,
_read_only_resource_inputs

	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *,
f'R%
#__inference__wrapped_model_12077094s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :(
$
"
_user_specified_name
12077434:(	$
"
_user_specified_name
12077432:($
"
_user_specified_name
12077430:($
"
_user_specified_name
12077428:($
"
_user_specified_name
12077426:($
"
_user_specified_name
12077424:($
"
_user_specified_name
12077422:($
"
_user_specified_name
12077420:($
"
_user_specified_name
12077418:($
"
_user_specified_name
12077416:T P
+
_output_shapes
:���������?
!
_user_specified_name	input_1
�
�
F__inference_conv2d_3_layer_call_and_return_conditional_losses_12077570

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOpe
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"8   p   �
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                r
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0�
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingVALID*
strides
r
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      |
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:���������0`2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0`2g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������0`2S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������8p2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������8p2
 
_user_specified_nameinputs
�
�
F__inference_conv2d_1_layer_call_and_return_conditional_losses_12077510

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOpe
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB">   |   �
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                r
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0�
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingVALID*
strides
r
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      |
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:���������<x2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<x2g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������<x2S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>|2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������>|2
 
_user_specified_nameinputs
�
�
+__inference_conv2d_3_layer_call_fn_12077549

inputs!
unknown:22
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0`2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_12077202w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������0`2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������8p2: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
12077545:($
"
_user_specified_name
12077543:W S
/
_output_shapes
:���������8p2
 
_user_specified_nameinputs
�,
�
E__inference_model_1_layer_call_and_return_conditional_losses_12077299
input_1)
conv2d_12077261:2
conv2d_12077263:2+
conv2d_1_12077267:22
conv2d_1_12077269:2+
conv2d_2_12077273:22
conv2d_2_12077275:2+
conv2d_3_12077279:22
conv2d_3_12077281:2+
conv2d_4_12077285:2
conv2d_4_12077287:
unknown
	unknown_0
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�
reshape/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������?* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_12077110�
conv2d/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_12077261conv2d_12077263*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>|2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_12077121z
tf.nn.relu/ReluRelu'conv2d/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:���������>|2�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCalltf.nn.relu/Relu:activations:0conv2d_1_12077267conv2d_1_12077269*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<x2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_12077148~
tf.nn.relu_1/ReluRelu)conv2d_1/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:���������<x2�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCalltf.nn.relu_1/Relu:activations:0conv2d_2_12077273conv2d_2_12077275*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������8p2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_12077175~
tf.nn.relu_2/ReluRelu)conv2d_2/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:���������8p2�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCalltf.nn.relu_2/Relu:activations:0conv2d_3_12077279conv2d_3_12077281*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0`2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_12077202~
tf.nn.relu_3/ReluRelu)conv2d_3/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:���������0`2�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCalltf.nn.relu_3/Relu:activations:0conv2d_4_12077285conv2d_4_12077287*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� @*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12077229�
tf.math.multiply/MulMulunknown)conv2d_4/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:��������� @m
tf.nn.relu_4/ReluRelutf.math.multiply/Mul:z:0*
T0*/
_output_shapes
:��������� @�
tf.__operators__.add/AddV2AddV2	unknown_0tf.nn.relu_4/Relu:activations:0*
T0*/
_output_shapes
:��������� @�
reshape_1/PartitionedCallPartitionedCalltf.__operators__.add/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� @* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_reshape_1_layer_call_and_return_conditional_losses_12077254u
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� @�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :(
$
"
_user_specified_name
12077287:(	$
"
_user_specified_name
12077285:($
"
_user_specified_name
12077281:($
"
_user_specified_name
12077279:($
"
_user_specified_name
12077275:($
"
_user_specified_name
12077273:($
"
_user_specified_name
12077269:($
"
_user_specified_name
12077267:($
"
_user_specified_name
12077263:($
"
_user_specified_name
12077261:T P
+
_output_shapes
:���������?
!
_user_specified_name	input_1
�

�
D__inference_conv2d_layer_call_and_return_conditional_losses_12077480

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������>|2*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������>|2g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������>|2S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12077600

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOpe
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"       �
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"0   `   �
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                r
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0�
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       |
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:��������� @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� @g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0`2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������0`2
 
_user_specified_nameinputs
�
�
+__inference_conv2d_1_layer_call_fn_12077489

inputs!
unknown:22
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<x2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_12077148w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<x2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>|2: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
12077485:($
"
_user_specified_name
12077483:W S
/
_output_shapes
:���������>|2
 
_user_specified_nameinputs
�
�
)__inference_conv2d_layer_call_fn_12077470

inputs!
unknown:2
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>|2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_12077121w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������>|2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
12077466:($
"
_user_specified_name
12077464:W S
/
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
F__inference_conv2d_2_layer_call_and_return_conditional_losses_12077540

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOpe
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"<   x   �
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                r
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0�
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingVALID*
strides
r
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      |
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:���������8p2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������8p2g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������8p2S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������<x2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������<x2
 
_user_specified_nameinputs
�X
�	
!__inference__traced_save_12077702
file_prefix>
$read_disablecopyonread_conv2d_kernel:22
$read_1_disablecopyonread_conv2d_bias:2B
(read_2_disablecopyonread_conv2d_1_kernel:224
&read_3_disablecopyonread_conv2d_1_bias:2B
(read_4_disablecopyonread_conv2d_2_kernel:224
&read_5_disablecopyonread_conv2d_2_bias:2B
(read_6_disablecopyonread_conv2d_3_kernel:224
&read_7_disablecopyonread_conv2d_3_bias:2B
(read_8_disablecopyonread_conv2d_4_kernel:24
&read_9_disablecopyonread_conv2d_4_bias:
savev2_const_2
identity_21��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:2*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:2i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:2x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:2|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:22*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:22k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:22z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:2|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:22*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:22k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:22z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:2|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:22*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:22m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:22z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:2|
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_conv2d_4_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:2*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:2m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:2z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_conv2d_4_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0savev2_const_2"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_20Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_21IdentityIdentity_20:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_21Identity_21:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:?;

_output_shapes
: 
!
_user_specified_name	Const_2:-
)
'
_user_specified_nameconv2d_4/bias:/	+
)
_user_specified_nameconv2d_4/kernel:-)
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
F__inference_conv2d_2_layer_call_and_return_conditional_losses_12077175

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOpe
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"<   x   �
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                r
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0�
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingVALID*
strides
r
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      |
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:���������8p2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������8p2g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������8p2S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������<x2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������<x2
 
_user_specified_nameinputs
�
�
*__inference_model_1_layer_call_fn_12077328
input_1!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2#
	unknown_5:22
	unknown_6:2#
	unknown_7:2
	unknown_8:
	unknown_9

unknown_10
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� @*,
_read_only_resource_inputs

	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_12077257s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :(
$
"
_user_specified_name
12077320:(	$
"
_user_specified_name
12077318:($
"
_user_specified_name
12077316:($
"
_user_specified_name
12077314:($
"
_user_specified_name
12077312:($
"
_user_specified_name
12077310:($
"
_user_specified_name
12077308:($
"
_user_specified_name
12077306:($
"
_user_specified_name
12077304:($
"
_user_specified_name
12077302:T P
+
_output_shapes
:���������?
!
_user_specified_name	input_1
��
�	
#__inference__wrapped_model_12077094
input_1G
-model_1_conv2d_conv2d_readvariableop_resource:2<
.model_1_conv2d_biasadd_readvariableop_resource:2I
/model_1_conv2d_1_conv2d_readvariableop_resource:22>
0model_1_conv2d_1_biasadd_readvariableop_resource:2I
/model_1_conv2d_2_conv2d_readvariableop_resource:22>
0model_1_conv2d_2_biasadd_readvariableop_resource:2I
/model_1_conv2d_3_conv2d_readvariableop_resource:22>
0model_1_conv2d_3_biasadd_readvariableop_resource:2I
/model_1_conv2d_4_conv2d_readvariableop_resource:2>
0model_1_conv2d_4_biasadd_readvariableop_resource:
model_1_12077077
model_1_12077081
identity��%model_1/conv2d/BiasAdd/ReadVariableOp�$model_1/conv2d/Conv2D/ReadVariableOp�'model_1/conv2d_1/BiasAdd/ReadVariableOp�&model_1/conv2d_1/Conv2D/ReadVariableOp�'model_1/conv2d_2/BiasAdd/ReadVariableOp�&model_1/conv2d_2/Conv2D/ReadVariableOp�'model_1/conv2d_3/BiasAdd/ReadVariableOp�&model_1/conv2d_3/Conv2D/ReadVariableOp�'model_1/conv2d_4/BiasAdd/ReadVariableOp�&model_1/conv2d_4/Conv2D/ReadVariableOpZ
model_1/reshape/ShapeShapeinput_1*
T0*
_output_shapes
::��m
#model_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_1/reshape/strided_sliceStridedSlicemodel_1/reshape/Shape:output:0,model_1/reshape/strided_slice/stack:output:0.model_1/reshape/strided_slice/stack_1:output:0.model_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
model_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?a
model_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :a
model_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
model_1/reshape/Reshape/shapePack&model_1/reshape/strided_slice:output:0(model_1/reshape/Reshape/shape/1:output:0(model_1/reshape/Reshape/shape/2:output:0(model_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
model_1/reshape/ReshapeReshapeinput_1&model_1/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:���������?�
$model_1/conv2d/Conv2D/ReadVariableOpReadVariableOp-model_1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0�
model_1/conv2d/Conv2DConv2D model_1/reshape/Reshape:output:0,model_1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������>|2*
paddingVALID*
strides
�
%model_1/conv2d/BiasAdd/ReadVariableOpReadVariableOp.model_1_conv2d_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
model_1/conv2d/BiasAddBiasAddmodel_1/conv2d/Conv2D:output:0-model_1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������>|2z
model_1/tf.nn.relu/ReluRelumodel_1/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������>|2v
%model_1/conv2d_1/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
Dmodel_1/conv2d_1/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB">   |   �
Fmodel_1/conv2d_1/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Amodel_1/conv2d_1/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
>model_1/conv2d_1/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
2model_1/conv2d_1/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
/model_1/conv2d_1/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
&model_1/conv2d_1/Conv2D/SpaceToBatchNDSpaceToBatchND%model_1/tf.nn.relu/Relu:activations:0;model_1/conv2d_1/Conv2D/SpaceToBatchND/block_shape:output:08model_1/conv2d_1/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2�
&model_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0�
model_1/conv2d_1/Conv2DConv2D/model_1/conv2d_1/Conv2D/SpaceToBatchND:output:0.model_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingVALID*
strides
�
2model_1/conv2d_1/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
,model_1/conv2d_1/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
&model_1/conv2d_1/Conv2D/BatchToSpaceNDBatchToSpaceND model_1/conv2d_1/Conv2D:output:0;model_1/conv2d_1/Conv2D/BatchToSpaceND/block_shape:output:05model_1/conv2d_1/Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:���������<x2�
'model_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
model_1/conv2d_1/BiasAddBiasAdd/model_1/conv2d_1/Conv2D/BatchToSpaceND:output:0/model_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<x2~
model_1/tf.nn.relu_1/ReluRelu!model_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������<x2v
%model_1/conv2d_2/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
Dmodel_1/conv2d_2/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"<   x   �
Fmodel_1/conv2d_2/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Amodel_1/conv2d_2/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
>model_1/conv2d_2/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
2model_1/conv2d_2/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
/model_1/conv2d_2/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
&model_1/conv2d_2/Conv2D/SpaceToBatchNDSpaceToBatchND'model_1/tf.nn.relu_1/Relu:activations:0;model_1/conv2d_2/Conv2D/SpaceToBatchND/block_shape:output:08model_1/conv2d_2/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2�
&model_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0�
model_1/conv2d_2/Conv2DConv2D/model_1/conv2d_2/Conv2D/SpaceToBatchND:output:0.model_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingVALID*
strides
�
2model_1/conv2d_2/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
,model_1/conv2d_2/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
&model_1/conv2d_2/Conv2D/BatchToSpaceNDBatchToSpaceND model_1/conv2d_2/Conv2D:output:0;model_1/conv2d_2/Conv2D/BatchToSpaceND/block_shape:output:05model_1/conv2d_2/Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:���������8p2�
'model_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
model_1/conv2d_2/BiasAddBiasAdd/model_1/conv2d_2/Conv2D/BatchToSpaceND:output:0/model_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������8p2~
model_1/tf.nn.relu_2/ReluRelu!model_1/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������8p2v
%model_1/conv2d_3/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
Dmodel_1/conv2d_3/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"8   p   �
Fmodel_1/conv2d_3/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Amodel_1/conv2d_3/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
>model_1/conv2d_3/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
2model_1/conv2d_3/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
/model_1/conv2d_3/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
&model_1/conv2d_3/Conv2D/SpaceToBatchNDSpaceToBatchND'model_1/tf.nn.relu_2/Relu:activations:0;model_1/conv2d_3/Conv2D/SpaceToBatchND/block_shape:output:08model_1/conv2d_3/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2�
&model_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0�
model_1/conv2d_3/Conv2DConv2D/model_1/conv2d_3/Conv2D/SpaceToBatchND:output:0.model_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingVALID*
strides
�
2model_1/conv2d_3/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
,model_1/conv2d_3/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
&model_1/conv2d_3/Conv2D/BatchToSpaceNDBatchToSpaceND model_1/conv2d_3/Conv2D:output:0;model_1/conv2d_3/Conv2D/BatchToSpaceND/block_shape:output:05model_1/conv2d_3/Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:���������0`2�
'model_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
model_1/conv2d_3/BiasAddBiasAdd/model_1/conv2d_3/Conv2D/BatchToSpaceND:output:0/model_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0`2~
model_1/tf.nn.relu_3/ReluRelu!model_1/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������0`2v
%model_1/conv2d_4/Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"       �
Dmodel_1/conv2d_4/Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"0   `   �
Fmodel_1/conv2d_4/Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Amodel_1/conv2d_4/Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
>model_1/conv2d_4/Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
2model_1/conv2d_4/Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
/model_1/conv2d_4/Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
&model_1/conv2d_4/Conv2D/SpaceToBatchNDSpaceToBatchND'model_1/tf.nn.relu_3/Relu:activations:0;model_1/conv2d_4/Conv2D/SpaceToBatchND/block_shape:output:08model_1/conv2d_4/Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2�
&model_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0�
model_1/conv2d_4/Conv2DConv2D/model_1/conv2d_4/Conv2D/SpaceToBatchND:output:0.model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
2model_1/conv2d_4/Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
,model_1/conv2d_4/Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
&model_1/conv2d_4/Conv2D/BatchToSpaceNDBatchToSpaceND model_1/conv2d_4/Conv2D:output:0;model_1/conv2d_4/Conv2D/BatchToSpaceND/block_shape:output:05model_1/conv2d_4/Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:��������� @�
'model_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv2d_4/BiasAddBiasAdd/model_1/conv2d_4/Conv2D/BatchToSpaceND:output:0/model_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� @�
model_1/tf.math.multiply/MulMulmodel_1_12077077!model_1/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:��������� @}
model_1/tf.nn.relu_4/ReluRelu model_1/tf.math.multiply/Mul:z:0*
T0*/
_output_shapes
:��������� @�
"model_1/tf.__operators__.add/AddV2AddV2model_1_12077081'model_1/tf.nn.relu_4/Relu:activations:0*
T0*/
_output_shapes
:��������� @{
model_1/reshape_1/ShapeShape&model_1/tf.__operators__.add/AddV2:z:0*
T0*
_output_shapes
::��o
%model_1/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'model_1/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'model_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_1/reshape_1/strided_sliceStridedSlice model_1/reshape_1/Shape:output:0.model_1/reshape_1/strided_slice/stack:output:00model_1/reshape_1/strided_slice/stack_1:output:00model_1/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!model_1/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : c
!model_1/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
model_1/reshape_1/Reshape/shapePack(model_1/reshape_1/strided_slice:output:0*model_1/reshape_1/Reshape/shape/1:output:0*model_1/reshape_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
model_1/reshape_1/ReshapeReshape&model_1/tf.__operators__.add/AddV2:z:0(model_1/reshape_1/Reshape/shape:output:0*
T0*+
_output_shapes
:��������� @u
IdentityIdentity"model_1/reshape_1/Reshape:output:0^NoOp*
T0*+
_output_shapes
:��������� @�
NoOpNoOp&^model_1/conv2d/BiasAdd/ReadVariableOp%^model_1/conv2d/Conv2D/ReadVariableOp(^model_1/conv2d_1/BiasAdd/ReadVariableOp'^model_1/conv2d_1/Conv2D/ReadVariableOp(^model_1/conv2d_2/BiasAdd/ReadVariableOp'^model_1/conv2d_2/Conv2D/ReadVariableOp(^model_1/conv2d_3/BiasAdd/ReadVariableOp'^model_1/conv2d_3/Conv2D/ReadVariableOp(^model_1/conv2d_4/BiasAdd/ReadVariableOp'^model_1/conv2d_4/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : 2N
%model_1/conv2d/BiasAdd/ReadVariableOp%model_1/conv2d/BiasAdd/ReadVariableOp2L
$model_1/conv2d/Conv2D/ReadVariableOp$model_1/conv2d/Conv2D/ReadVariableOp2R
'model_1/conv2d_1/BiasAdd/ReadVariableOp'model_1/conv2d_1/BiasAdd/ReadVariableOp2P
&model_1/conv2d_1/Conv2D/ReadVariableOp&model_1/conv2d_1/Conv2D/ReadVariableOp2R
'model_1/conv2d_2/BiasAdd/ReadVariableOp'model_1/conv2d_2/BiasAdd/ReadVariableOp2P
&model_1/conv2d_2/Conv2D/ReadVariableOp&model_1/conv2d_2/Conv2D/ReadVariableOp2R
'model_1/conv2d_3/BiasAdd/ReadVariableOp'model_1/conv2d_3/BiasAdd/ReadVariableOp2P
&model_1/conv2d_3/Conv2D/ReadVariableOp&model_1/conv2d_3/Conv2D/ReadVariableOp2R
'model_1/conv2d_4/BiasAdd/ReadVariableOp'model_1/conv2d_4/BiasAdd/ReadVariableOp2P
&model_1/conv2d_4/Conv2D/ReadVariableOp&model_1/conv2d_4/Conv2D/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
+
_output_shapes
:���������?
!
_user_specified_name	input_1
�
H
,__inference_reshape_1_layer_call_fn_12077605

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� @* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_reshape_1_layer_call_and_return_conditional_losses_12077254d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� @:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�
�
F__inference_conv2d_3_layer_call_and_return_conditional_losses_12077202

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOpe
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"8   p   �
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                r
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype0�
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingVALID*
strides
r
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"      |
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:���������0`2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0`2g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������0`2S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������8p2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������8p2
 
_user_specified_nameinputs
�

c
G__inference_reshape_1_layer_call_and_return_conditional_losses_12077254

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:��������� @\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:��������� @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� @:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�,
�
E__inference_model_1_layer_call_and_return_conditional_losses_12077257
input_1)
conv2d_12077122:2
conv2d_12077124:2+
conv2d_1_12077149:22
conv2d_1_12077151:2+
conv2d_2_12077176:22
conv2d_2_12077178:2+
conv2d_3_12077203:22
conv2d_3_12077205:2+
conv2d_4_12077230:2
conv2d_4_12077232:
unknown
	unknown_0
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�
reshape/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������?* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_12077110�
conv2d/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_12077122conv2d_12077124*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>|2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_12077121z
tf.nn.relu/ReluRelu'conv2d/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:���������>|2�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCalltf.nn.relu/Relu:activations:0conv2d_1_12077149conv2d_1_12077151*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<x2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_1_layer_call_and_return_conditional_losses_12077148~
tf.nn.relu_1/ReluRelu)conv2d_1/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:���������<x2�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCalltf.nn.relu_1/Relu:activations:0conv2d_2_12077176conv2d_2_12077178*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������8p2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_12077175~
tf.nn.relu_2/ReluRelu)conv2d_2/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:���������8p2�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCalltf.nn.relu_2/Relu:activations:0conv2d_3_12077203conv2d_3_12077205*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0`2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_3_layer_call_and_return_conditional_losses_12077202~
tf.nn.relu_3/ReluRelu)conv2d_3/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:���������0`2�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCalltf.nn.relu_3/Relu:activations:0conv2d_4_12077230conv2d_4_12077232*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� @*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12077229�
tf.math.multiply/MulMulunknown)conv2d_4/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:��������� @m
tf.nn.relu_4/ReluRelutf.math.multiply/Mul:z:0*
T0*/
_output_shapes
:��������� @�
tf.__operators__.add/AddV2AddV2	unknown_0tf.nn.relu_4/Relu:activations:0*
T0*/
_output_shapes
:��������� @�
reshape_1/PartitionedCallPartitionedCalltf.__operators__.add/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� @* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_reshape_1_layer_call_and_return_conditional_losses_12077254u
IdentityIdentity"reshape_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� @�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :(
$
"
_user_specified_name
12077232:(	$
"
_user_specified_name
12077230:($
"
_user_specified_name
12077205:($
"
_user_specified_name
12077203:($
"
_user_specified_name
12077178:($
"
_user_specified_name
12077176:($
"
_user_specified_name
12077151:($
"
_user_specified_name
12077149:($
"
_user_specified_name
12077124:($
"
_user_specified_name
12077122:T P
+
_output_shapes
:���������?
!
_user_specified_name	input_1
�
�
*__inference_model_1_layer_call_fn_12077357
input_1!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2#
	unknown_5:22
	unknown_6:2#
	unknown_7:2
	unknown_8:
	unknown_9

unknown_10
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� @*,
_read_only_resource_inputs

	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_12077299s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :(
$
"
_user_specified_name
12077349:(	$
"
_user_specified_name
12077347:($
"
_user_specified_name
12077345:($
"
_user_specified_name
12077343:($
"
_user_specified_name
12077341:($
"
_user_specified_name
12077339:($
"
_user_specified_name
12077337:($
"
_user_specified_name
12077335:($
"
_user_specified_name
12077333:($
"
_user_specified_name
12077331:T P
+
_output_shapes
:���������?
!
_user_specified_name	input_1
�2
�
$__inference__traced_restore_12077741
file_prefix8
assignvariableop_conv2d_kernel:2,
assignvariableop_1_conv2d_bias:2<
"assignvariableop_2_conv2d_1_kernel:22.
 assignvariableop_3_conv2d_1_bias:2<
"assignvariableop_4_conv2d_2_kernel:22.
 assignvariableop_5_conv2d_2_bias:2<
"assignvariableop_6_conv2d_3_kernel:22.
 assignvariableop_7_conv2d_3_bias:2<
"assignvariableop_8_conv2d_4_kernel:2.
 assignvariableop_9_conv2d_4_bias:
identity_11��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_11Identity_11:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:-
)
'
_user_specified_nameconv2d_4/bias:/	+
)
_user_specified_nameconv2d_4/kernel:-)
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
+__inference_conv2d_4_layer_call_fn_12077579

inputs!
unknown:2
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� @*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12077229w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0`2: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
12077575:($
"
_user_specified_name
12077573:W S
/
_output_shapes
:���������0`2
 
_user_specified_nameinputs
�
a
E__inference_reshape_layer_call_and_return_conditional_losses_12077110

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������?`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?:S O
+
_output_shapes
:���������?
 
_user_specified_nameinputs
�

c
G__inference_reshape_1_layer_call_and_return_conditional_losses_12077618

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:��������� @\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:��������� @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� @:W S
/
_output_shapes
:��������� @
 
_user_specified_nameinputs
�
a
E__inference_reshape_layer_call_and_return_conditional_losses_12077461

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������?`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?:S O
+
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12077229

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOpe
Conv2D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"       �
3Conv2D/required_space_to_batch_paddings/input_shapeConst*
_output_shapes
:*
dtype0*
valueB"0   `   �
5Conv2D/required_space_to_batch_paddings/base_paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
0Conv2D/required_space_to_batch_paddings/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
-Conv2D/required_space_to_batch_paddings/cropsConst*
_output_shapes

:*
dtype0*)
value B"                r
!Conv2D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       
Conv2D/SpaceToBatchND/paddingsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/SpaceToBatchNDSpaceToBatchNDinputs*Conv2D/SpaceToBatchND/block_shape:output:0'Conv2D/SpaceToBatchND/paddings:output:0*
T0*/
_output_shapes
:���������2|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0�
Conv2DConv2DConv2D/SpaceToBatchND:output:0Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
!Conv2D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB"       |
Conv2D/BatchToSpaceND/cropsConst*
_output_shapes

:*
dtype0*)
value B"                �
Conv2D/BatchToSpaceNDBatchToSpaceNDConv2D:output:0*Conv2D/BatchToSpaceND/block_shape:output:0$Conv2D/BatchToSpaceND/crops:output:0*
T0*/
_output_shapes
:��������� @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv2D/BatchToSpaceND:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� @g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0`2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������0`2
 
_user_specified_nameinputs
�
�
+__inference_conv2d_2_layer_call_fn_12077519

inputs!
unknown:22
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������8p2*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_conv2d_2_layer_call_and_return_conditional_losses_12077175w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������8p2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������<x2: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
12077515:($
"
_user_specified_name
12077513:W S
/
_output_shapes
:���������<x2
 
_user_specified_nameinputs
�

�
D__inference_conv2d_layer_call_and_return_conditional_losses_12077121

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������>|2*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������>|2g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������>|2S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������?
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
input_14
serving_default_input_1:0���������?A
	reshape_14
StatefulPartitionedCall:0��������� @tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op"
_tf_keras_layer
(
(	keras_api"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op"
_tf_keras_layer
(
2	keras_api"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op"
_tf_keras_layer
(
<	keras_api"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias
 E_jit_compiled_convolution_op"
_tf_keras_layer
(
F	keras_api"
_tf_keras_layer
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias
 O_jit_compiled_convolution_op"
_tf_keras_layer
(
P	keras_api"
_tf_keras_layer
(
Q	keras_api"
_tf_keras_layer
(
R	keras_api"
_tf_keras_layer
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
f
%0
&1
/2
03
94
:5
C6
D7
M8
N9"
trackable_list_wrapper
f
%0
&1
/2
03
94
:5
C6
D7
M8
N9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
^trace_0
_trace_12�
*__inference_model_1_layer_call_fn_12077328
*__inference_model_1_layer_call_fn_12077357�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z^trace_0z_trace_1
�
`trace_0
atrace_12�
E__inference_model_1_layer_call_and_return_conditional_losses_12077257
E__inference_model_1_layer_call_and_return_conditional_losses_12077299�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z`trace_0zatrace_1
�
b
capture_10
c
capture_11B�
#__inference__wrapped_model_12077094input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zb
capture_10zc
capture_11
,
dserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
jtrace_02�
*__inference_reshape_layer_call_fn_12077447�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
�
ktrace_02�
E__inference_reshape_layer_call_and_return_conditional_losses_12077461�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zktrace_0
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
qtrace_02�
)__inference_conv2d_layer_call_fn_12077470�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
�
rtrace_02�
D__inference_conv2d_layer_call_and_return_conditional_losses_12077480�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zrtrace_0
':%22conv2d/kernel
:22conv2d/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
"
_generic_user_object
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
�
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
xtrace_02�
+__inference_conv2d_1_layer_call_fn_12077489�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0
�
ytrace_02�
F__inference_conv2d_1_layer_call_and_return_conditional_losses_12077510�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zytrace_0
):'222conv2d_1/kernel
:22conv2d_1/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
"
_generic_user_object
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
trace_02�
+__inference_conv2d_2_layer_call_fn_12077519�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�
�trace_02�
F__inference_conv2d_2_layer_call_and_return_conditional_losses_12077540�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'222conv2d_2/kernel
:22conv2d_2/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
"
_generic_user_object
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_3_layer_call_fn_12077549�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_3_layer_call_and_return_conditional_losses_12077570�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'222conv2d_3/kernel
:22conv2d_3/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
"
_generic_user_object
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_4_layer_call_fn_12077579�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12077600�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'22conv2d_4/kernel
:2conv2d_4/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_reshape_1_layer_call_fn_12077605�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_reshape_1_layer_call_and_return_conditional_losses_12077618�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
�
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
14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
b
capture_10
c
capture_11B�
*__inference_model_1_layer_call_fn_12077328input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zb
capture_10zc
capture_11
�
b
capture_10
c
capture_11B�
*__inference_model_1_layer_call_fn_12077357input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zb
capture_10zc
capture_11
�
b
capture_10
c
capture_11B�
E__inference_model_1_layer_call_and_return_conditional_losses_12077257input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zb
capture_10zc
capture_11
�
b
capture_10
c
capture_11B�
E__inference_model_1_layer_call_and_return_conditional_losses_12077299input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zb
capture_10zc
capture_11
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
�
b
capture_10
c
capture_11B�
&__inference_signature_wrapper_12077442input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zb
capture_10zc
capture_11
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
�B�
*__inference_reshape_layer_call_fn_12077447inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_reshape_layer_call_and_return_conditional_losses_12077461inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_layer_call_fn_12077470inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_layer_call_and_return_conditional_losses_12077480inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_1_layer_call_fn_12077489inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_1_layer_call_and_return_conditional_losses_12077510inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_2_layer_call_fn_12077519inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_2_layer_call_and_return_conditional_losses_12077540inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_3_layer_call_fn_12077549inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_3_layer_call_and_return_conditional_losses_12077570inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_4_layer_call_fn_12077579inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12077600inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_reshape_1_layer_call_fn_12077605inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_reshape_1_layer_call_and_return_conditional_losses_12077618inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
#__inference__wrapped_model_12077094%&/09:CDMNbc4�1
*�'
%�"
input_1���������?
� "9�6
4
	reshape_1'�$
	reshape_1��������� @�
F__inference_conv2d_1_layer_call_and_return_conditional_losses_12077510s/07�4
-�*
(�%
inputs���������>|2
� "4�1
*�'
tensor_0���������<x2
� �
+__inference_conv2d_1_layer_call_fn_12077489h/07�4
-�*
(�%
inputs���������>|2
� ")�&
unknown���������<x2�
F__inference_conv2d_2_layer_call_and_return_conditional_losses_12077540s9:7�4
-�*
(�%
inputs���������<x2
� "4�1
*�'
tensor_0���������8p2
� �
+__inference_conv2d_2_layer_call_fn_12077519h9:7�4
-�*
(�%
inputs���������<x2
� ")�&
unknown���������8p2�
F__inference_conv2d_3_layer_call_and_return_conditional_losses_12077570sCD7�4
-�*
(�%
inputs���������8p2
� "4�1
*�'
tensor_0���������0`2
� �
+__inference_conv2d_3_layer_call_fn_12077549hCD7�4
-�*
(�%
inputs���������8p2
� ")�&
unknown���������0`2�
F__inference_conv2d_4_layer_call_and_return_conditional_losses_12077600sMN7�4
-�*
(�%
inputs���������0`2
� "4�1
*�'
tensor_0��������� @
� �
+__inference_conv2d_4_layer_call_fn_12077579hMN7�4
-�*
(�%
inputs���������0`2
� ")�&
unknown��������� @�
D__inference_conv2d_layer_call_and_return_conditional_losses_12077480s%&7�4
-�*
(�%
inputs���������?
� "4�1
*�'
tensor_0���������>|2
� �
)__inference_conv2d_layer_call_fn_12077470h%&7�4
-�*
(�%
inputs���������?
� ")�&
unknown���������>|2�
E__inference_model_1_layer_call_and_return_conditional_losses_12077257~%&/09:CDMNbc<�9
2�/
%�"
input_1���������?
p

 
� "0�-
&�#
tensor_0��������� @
� �
E__inference_model_1_layer_call_and_return_conditional_losses_12077299~%&/09:CDMNbc<�9
2�/
%�"
input_1���������?
p 

 
� "0�-
&�#
tensor_0��������� @
� �
*__inference_model_1_layer_call_fn_12077328s%&/09:CDMNbc<�9
2�/
%�"
input_1���������?
p

 
� "%�"
unknown��������� @�
*__inference_model_1_layer_call_fn_12077357s%&/09:CDMNbc<�9
2�/
%�"
input_1���������?
p 

 
� "%�"
unknown��������� @�
G__inference_reshape_1_layer_call_and_return_conditional_losses_12077618k7�4
-�*
(�%
inputs��������� @
� "0�-
&�#
tensor_0��������� @
� �
,__inference_reshape_1_layer_call_fn_12077605`7�4
-�*
(�%
inputs��������� @
� "%�"
unknown��������� @�
E__inference_reshape_layer_call_and_return_conditional_losses_12077461k3�0
)�&
$�!
inputs���������?
� "4�1
*�'
tensor_0���������?
� �
*__inference_reshape_layer_call_fn_12077447`3�0
)�&
$�!
inputs���������?
� ")�&
unknown���������?�
&__inference_signature_wrapper_12077442�%&/09:CDMNbc?�<
� 
5�2
0
input_1%�"
input_1���������?"9�6
4
	reshape_1'�$
	reshape_1��������� @