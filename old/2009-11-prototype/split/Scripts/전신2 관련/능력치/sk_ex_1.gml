//주민 능력치

global.ex_distinction[1]=1                        //1-근거리 2-장거리 3-건물
global.ex_min_size[1]=1                        //미니맵에 표시될 확대크기
global.ex_hp_right_size[1]=10                     //hp바 왼쪽 사이즈
global.ex_hp_size[1]=2                     //hp바 곱샘사이즈(오른쪽)
global.ex_light[1]=90                          //이동 시야
global.ex_light_2[1]=90                        //장거리의 공격시야
global.ex_light_3[1]=-1                        //장거리의 최소시야
global.ex_light_33[1]=0                        // 1=최소시야에 잇으면 뒤로감
global.ex_hp[1]=100                          //체력
global.ex_maxhp[1]=100                          //최대체력
global.ex_move_speed[1]=5                       //스피드
global.ex_Attack_point[1]=10                       //공격력
global.ex_Attack_time[1]=0.7                     //어택후 다음어택까지의 시간
global.ex_bullet_speed[1]=6                     //화살의 속도
global.ex_bullet_image_alpha1[1]=1                      //화살 처음 나갈시 투명도
global.ex_bullet_image_alpha2[1]=1                      //화살 마지막시 투명도
global.ex_bullet_go_attp[1]=0                      //화살 가는중 얘들 때리기 공격력
global.ex_bullet_go_attpt[1]=0                      //화살 가는중 얘들 때리기 0-모두공격 1-적만공격 2-팀만공격
global.ex_Att_spl_light[1]=0                       //스플레쉬 범위
global.ex_Att_spl_apoint[1]=0                    //스플레쉬 공격력
global.ex_Att_spl_team[1]=0                      //스플레쉬 0- 모두공격 1- 적만공격 2-팀만공격
global.ex_Attack_2ch[1]=0                              //연속공격 수치
global.ex_exp_p[1]=0                       //경험치
global.ex_pop[1]=1                      //인구증가
global.ex_max_pop[1]=0                      //최대인구증가
global.ex_cwatw[1]=0                      //생산 비용
global.ex_ctime[1]=1                      //생산 시간
global.ex_Attack_p[1,0]=0                         //+데미지할 능력치 코드들 (2차배열 수정)
global.ex_Attack_e[1,0]=0                     //+데미지의 공격력들 (2차배열 수정)
global.ex_Attack_spt[1]=0                     //+데미지 2차배열의 양들[*,배열의양]
global.ex_name[1]='주민'                     //이름    
global.ex_special[1,0]=0                         //특별수 (2차배열수정)         
global.ex_sporit[1]=0                         //특별수 2차배열의 양[*,배열의양]
global.ex_rococ[1]=0                         //자원을 운반하는 놈의 능력치 코드
global.ex_rocow[1]=0                         //자원 캐는양
global.ex_solid[1]=0                         //0 - 액체 1- 고체
global.ex_depth[1]=0                         //0 - 일반 , -2 - 건물 (유닛 겹침순위)
global.ex_subimg[1]=-1                         //-1일반 (유닛 스프라이트 체인지)
global.ex_assa2[1]=0  //집결지 (사용 - 1)

global.ex_sknu[1]=0        //스킬을 사용할 양 최대 7까지 가능 (안사용 - -1)

global.ex_skill[1,0]=11
//스킬버전     (2차배열수정해서 다른스킬 변경)
//  (10)클릭   (20) 유닛생산   (30)건물건설    (40)클릭+바탕      (50)지속 
//  1자신        1 생산             1건설                1클릭적             1지속
//  2범위        2업글                                      2범위
//                 3아이템
global.ex_skill_sub[1,0]='없음'        //스킬 제목 (2차배열수정해서 다른스킬 변경)
global.ex_skill_exp[1,0]='없음'        //스킬 설명 (2차배열수정해서 다른스킬 변경)

global.ex_mask_ppt[1,0]=string(1)+"|"+string(0)+"|"+string(0)+"|"+string(0)+"|"+string(0)+"|"+string(1)+"|"+string(0)+"|"
// 스킬 자원증/감 표시?   (2차배열수정해서 다른스킬 변경)
// 유닛코드 ,   제목유닛이름표시, 생산비용표시, 인구증가 표시,   최대인구증가 표시 ,  체력감소량표시 ,  exp감소량표시

global.ex_mask[1,0]=string(1)+"|"+string(0)+"|"+string(0)+"|"+string(0)+"|"+string(0)+"|"+string(1)+"|"+string(0)+"|"
// 스킬 자원증/감   (2차배열수정해서 다른스킬 변경)
// 유닛코드 ,   유닛이름표시,  돈감소량 , 인구증가량,   최대인구증가량 ,  체력감소량 ,  exp감소량

global.ex_skil_po[1,0]="exp_p+=10"
//능력치 증가량   (2차배열수정해서 다른스킬 변경) 
global.ex_skil_poche[1,0]=10
//초기화 시간
global.ex_skil_each[1,0]=1
//자동초기화 사용 - 1
global.ex_skil_ea[1,0]=''
//수동초기화
global.ex_skil_sskil[1,0]=''
//스킬의 스탭 스킬
global.ex_skil_eu[1,0]=0
// 0 - 모두공격 , 1 - 적만공격, 2-팀만
global.ex_skil_eu2[1,0]=0
// 1- 나를포함 공격
global.ex_skil_et[1,0]=0
// 범위
global.ex_skil_tico[1,0]=0
// 쿨타임 시간
global.ex_skil_die[1,0]=0
// 0-죽으면끝 1-죽어도 계속
global.ex_skil_dep[1,0]=-3
// 스킬 그림 깊이값
global.ex_skil_sta[1,0]=0
// 0-시전 유닛기준 1-발동지역기준
global.ex_skil_for[1,0]=0
// 스킬반복 횟수  (999-무한반복)
global.ex_skil_for2[1,0]=0
// 스킬반복 시간
global.ex_skil_for3[1,0]=0
// 스킬반복시 쿨타임 0-미사용 1-사용
global.ex_skil_cr_al[1,0]=0
// 유닛 생산,업글시 하는경우 1-안보이기
global.ex_skil_mo_e[1,0]=0
// 땅스킬시 0 - 모두이동 , 1 - 적만이동, 2-팀만이동 , 3=안함
global.ex_skil_mo_e2[1,0]=0
// 땅스킬시 0 - 나를 포함안함 1-나를 포함함
global.ex_skil_mo_e3[1,0]=1
// 땅스킬시 0-땅클릭안함 1-땅클릭함  (클릭적 모드이면 - 0 으로 조절)
global.ex_skil_mo_et[1,0]=1
// 땅스킬시 범위 (초기값 - 1)
global.ex_skil_mo_et2[1,0]=0
// 땅스킬시 범위인식놈 (0-클릭지역  1-클릭유닛(땅클릭=1 이면 x) )
global.ex_skil_mo_sta[1,0]=0
// 땅스킬시 0-시전유닛기준 1-클릭지역기준 2-클릭유닛기준(땅클릭=1 이면 x) 3-스킬쓴 구역기준
global.ex_skil_mo_mv[1,0]=0
// 땅스킬이동시 0-이동안함 1-클릭지역이동 2-클릭유닛이동(땅클릭=1 이면 x) 
global.ex_skil_mo_mvs[1,0]=0
// 땅스킬이동시 이동속도
global.ex_skil_mo_lig[1,0]=0
// 땅스킬이동시 이동할 시야 (시야에 없음 죽음  , 미사용- 0)
global.ex_skil_mo_for[1,0]=0
// 땅스킬반복시 초기화 구역 0-스킬쓴 x,y 1-시전한 유닛
global.ex_skil_mo_die[1,0]=0
// 땅스킬시 1-클릭유닛 죽으면 죽음(땅클릭=1 이면 x) 
global.ex_skil_mo_ima[1,0]=0
// 땅스킬시 적,땅과 박았을경우의 첫이미지장(이동시 가능) (미사용 - 0)