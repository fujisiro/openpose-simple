@echo off
rem --- 
rem ---  OpenPose �� json�f�[�^���� 3D�f�[�^�ɕϊ�
rem --- 

rem ---  �J�����g�f�B���N�g�������s��ɕύX
cd /d %~dp0

rem ---  ���͑Ώۉf���t�@�C���p�X
set /P INPUT_VIDEO="���͑Ώۉf���t�@�C���p�X: "
rem --- echo INPUT_VIDEO�F%INPUT_VIDEO%

rem ---  JSON�o�͐�f�B���N�g���p�X
set /P OUTPUT_JSON="JSON�o�͐�f�B���N�g���p�X: "
rem --- echo OUTPUT_JSON�F%OUTPUT_JSON%

rem ---  �f���o�͐�f�B���N�g���p�X
set /P OUTPUT_VIDEO="�f���o�͐�t�@�C���p�X(.avi�܂Ŏw��): "
rem --- echo OUTPUT_VIDEO�F%OUTPUT_VIDEO%

rem ---  �f���ɉf���Ă���ő�l��
set /P NUMBER_PEOPLE_MAX="�f���ɉf���Ă���ő�l��: "
rem --- echo NUMBER_PEOPLE_MAX�F%NUMBER_PEOPLE_MAX%

rem -- exe���s
Release\OpenPoseDemo.exe --video %INPUT_VIDEO% --write_json %OUTPUT_JSON% --write_video %OUTPUT_VIDEO% --number_people_max %NUMBER_PEOPLE_MAX%

