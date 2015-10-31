# nromgen(Nagato ROM generator)
���w�֐��̐��l��������ROM��H�𐶐����܂��B�o�̓t�@�C����Verilog�A�t�H�[�}�b�g�͌Œ菬���_�ł��B���͈͂̔͂�Œ菬���_���̃r�b�g����ς��āA�ȒP��Verilog�t�@�C�����X�V�ł��܂��B

# �����
nromgen�𓮍삳����ɂ�Gauche���K�v�ł��Bformat���g���Ă���̂ŁA����scheme�����n�ł͓����܂���B�������ꂽVerilog�ƃe�X�g�x���`�𓮍삳����ɂ�Verilog�̃V�~�����[�^���K�v�ł��B�T���v���Ƃ���veritak�ł̃v���W�F�N�g�t�@�C����p�ӂ��Ă��܂��B

����m�F�ɂ͈ȉ��̃o�[�W�������g�p���܂����B
- Gauche:Gauche scheme shell, version 0.9.4 [utf-8,wthreads], i686-pc-mingw32
- Veritak:3.84D

# �g����
gosh�ւ̃p�X���ʂ��Ă����ԂŁA�ȉ��̃R�}���h�����s���Ă��������B
```
$ gosh nromgen.scm �ݒ�t�@�C��
```
�T���v���𓮂����ꍇ�́Asrc�f�B���N�g���[�ֈړ����A�ȉ��̃R�}���h�����s���Ă��������B
```
$ gosh nromgen.scm ../sample/sinrom.scm
```
output�f�B���N�g���[�ȉ��ɁARTL�A�e�X�g�x���`�A�e���v���[�g����������܂��B


# �ݒ�t�@�C���t�H�[�}�b�g
ROM�̐����ɕK�v�Ȓl��ݒ肵�Ă��������B

```scheme
; sample file
(define *nr-func* sin)
(define *nr-min* -3.14)
(define *nr-max* 3.14)
(define *nr-adr-width* 9)
(define *nr-W* 24)   ; total word length
(define *nr-I* 8)    ; integer word length

(define *nr-module-name* "sinrom")
(define *nr-rtl-output-dir* "../output/rtl")
(define *nr-testbench-output-dir* "../output/tb")
(define *nr-template-output-dir* "../output/template")

```
���ꂼ��̕ϐ��̈Ӗ��ł��B
� \*nr-func\* ��肽���֐����w�肵�Ă��܂��BGauche���T�|�[�g���Ă���֐��ł���΂��̂܂܎w��ł��܂��B�Ɏ����g���܂��B�i��q�j
- \*nr-min\* �f�[�^�̍ŏ��l���w�肵�܂��B
- \*nr-max\* �f�[�^�̍ő�l���w�肵�܂��B
- \*nr-adr-width\* ROM�̃A�h���X�̃r�b�g�����w�肵�܂��B
- \*nr-W\* �o�̓f�[�^�i�Œ菬���_���j�̃r�b�g�����w�肵�܂��BSystemC��sc_fixed�̃p�����[�^W�Ɠ����ł��B�ʎq���̃A���S���Y���́A
- \*nr-I\* �o�̓f�[�^�i�Œ菬���_���j�̐��������̃r�b�g�����w�肵�܂��BSystemC��sc_fixed�̃p�����[�^I�Ɠ����ł����A��ɕ����r�b�g��1bit���m�ۂ��܂��B�I�[�o�[�t���[�����������ꍇ�́A�ő�l�A�ŏ��l�ŖO�a���܂��B
- \*nr-module-name\* Verilog�̃��W���[�������w�肵�܂��B�B
- \*nr-rtl-output-dir\* RTL�t�@�C���̏o�͐���w�肵�܂��B
\*nr-testbench-output-dir\* �e�X�g�x���`�̏o�͐���w�肵�܂��B
\*nr-template-output-dir\* �e���v���[�g�̏o�͐���w�肵�܂��B

\*nr-func\*�̓Ɏ����g�p���āA�C�ӂ̐������L�q�ł��܂��B������1���A������Ԃ��Ɏ����L�q���Ă��������B���̓f�[�^���悷��ROM����肽���ꍇ�͂��̂悤�Ɏw�肵�܂��B

```scheme
(define *nr-func* (lambda (x) (* x x)))
```

# �o�̓t�@�C��
�o�̓t�@�C���́ARTL�A�e�X�g�x���`�A�e���v���[�g��3�ł��B�t�H�[�}�b�g�͑S��Verilog�ł��B���ꂼ��ݒ�t�@�C���Ŏw�肵���f�B���N�g���ɐ�������܂��B

## RTL
ROM��RTL�L�q�ł��B

## �e�X�g�x���`
��������ROM��Sim���邽�߂̃e�X�g�x���`�ł��B

## �e���v���[�g
Verilog�ŃC���X�^���X������Ƃ��Ɏg���e���v���[�g�ł��B
```verilog
	sinrom sinrom (
		.CLK(),
		.RESET_X(),
		.ADR(),
		.DATA()
	);

```

# sim����
veritak�ł�Sim���ʂł��B
## sin�֐�

```scheme
(define *nr-func* sin)
```
[sin]: https://github.com/natsutan/nromgen/img/sin.png

## tanh�֐�
```scheme
(define *nr-func* tanh)
```
[tanh]: https://github.com/natsutan/nromgen/img/tanh.png


## y=x^2
```scheme
(define *nr-func* (lambda (x) (* x x)))
```
[parabora]: https://github.com/natsutan/nromgen/img/poarabo.png


# TODO
- �N�����̃G���[�����AUsage�̕\��
- RTL�̃f�[�^�L�q�����ɁA�R�����g�Ƃ��ĕ��������_�������߂����l��ǉ�
- Verilog���������͒��ۓx��2���炢�グ����


