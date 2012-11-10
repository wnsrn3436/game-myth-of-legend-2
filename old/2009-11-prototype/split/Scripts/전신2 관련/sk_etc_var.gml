//모드,기타 변수
team=0       //자신의 팀
player=0    //1=컴퓨터 2=인간
player_id=0   //어떤 플레이어의 소유인가>?
click=0          //클릭확인
move_x=x      //이동할x
move_y=y         //이동할y
move_start=0      //이동할껀지 안할껀지 결정
Attack_choose=1  //공격 할껀지 안할껀지 결정
Attack_waits=0  //장거리에 맞으면 그곳으로 가는.
drag_wait=0    //드래그 대기
exp_un=0   //마지막으로 공격한 유닛의 id 적기
R_r=0     //깜빡이게 하기
bullet_sprite1=global.sp_u6[c_hoo,1]                     //처음 화살의 모습
bullet_sprite2=global.sp_u6[c_hoo,2]                     //마지막 화살의 모습
picking_state=0        //채집상태
obj_placed = instance_place(x, y,obj_reso)  //채집 하는얘 id
click_number=0   //몇번째 클릭인가?
randonm[10000]=0   //스킬 랜덤 받기
skil_tico2[7]=0  //스킬 쿨타임 시간
Attack_2ch2=Attack_2ch   //연속공격 계산
spunnu=0  //특별 부대소속
ununit=-1  //부대
nameind=0   //이름표시? (1-표시)
assa_x=0
assa_y=0  //집결지 x,y
a1=0; a2=0; a3=0

cre[4]=0   //생산 코드
cretm=0   //생산되고있는 시간
crerm[1]=spr_sk; crerm[2]=spr_sk; crerm[3]=spr_sk; crerm[4]=spr_sk    //생산 그림
skki[4]=0    //스킬창iid 저장란

bil_iid=0   //건설할놈의 iid
bil_go=0  //건물지으러 가라
bil_cl=0  //건물짓는 초.
bil_cl2=0  //건물짓는 초.2
bil_rm=1 //건물 건설모양

sk_iid=0 //스킬쓸놈의 iid
sk_go=0 //스킬쓰러가라
gud_iid=0  //클릭한넘의 iid
gud_x=0   //클릭된 땅x
gud_y=0   //클릭된 땅y