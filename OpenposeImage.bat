@echo off
rem --- 
rem ---  OpenPose �� json�f�[�^���� 3D�f�[�^�ɕϊ�
rem --- 

rem ---  �J�����g�f�B���N�g�������s��ɕύX
cd /d %~dp0

rem ---  ���͑Ώۉ摜�f�B���N�g���p�X
set /P INPUT_IMAGE="���͑Ώۉ摜�f�B���N�g���p�X: "
rem --- echo INPUT_IMAGE�F%INPUT_IMAGE%

rem ---  JSON�o�͐�f�B���N�g���p�X
set /P OUTPUT_JSON="JSON�o�͐�f�B���N�g���p�X: "
rem --- echo OUTPUT_JSON�F%OUTPUT_JSON%

rem ---  �摜�o�͐�f�B���N�g���p�X
set /P OUTPUT_IMAGE="�摜�o�͐�t�@�C���p�X(.png�܂Ŏw��): "
rem --- echo OUTPUT_IMAGE�F%OUTPUT_IMAGE%

rem ---  �摜�ɉf���Ă���ő�l��
set /P NUMBER_PEOPLE_MAX="�摜�ɉf���Ă���ő�l��: "
rem --- echo NUMBER_PEOPLE_MAX�F%NUMBER_PEOPLE_MAX%

rem -- exe���s
Release\OpenPoseDemo.exe --image_dir %INPUT_IMAGE% --write_json %OUTPUT_JSON% --write_images %OUTPUT_IMAGE% --number_people_max %NUMBER_PEOPLE_MAX%

