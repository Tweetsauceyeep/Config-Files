"use strict";(("undefined"!=typeof self?self:global).webpackChunkclient_web=("undefined"!=typeof self?self:global).webpackChunkclient_web||[]).push([[367],{19565:(e,t,a)=>{a.d(t,{u:()=>T});var l=a(67294),A=a.n(l),r=a(94184),n=a.n(r),o=a(76343),E=a(62890);const D="dfiNHoZuco3Jmw1r25UR",c="wNDpPvdpUFS6jiOSdXdz",s="_lZiy_Vpk3RLZ6w2EPb4",i="GidOR_OfCw_Hcq6qHW8u",d="ypO_MKZjr55nSXBz4tPy";var u=a(51775);const T=A().memo((e=>{const{children:t,message:a,title:l,linkTitle:r,linkTo:T,onClick:C,renderInline:_=!1}=e,{isXSOnly:L,isSMOnly:S}=(0,u.e)(),m=L||S;return A().createElement("section",{className:n()(D,{[c]:_})},t,A().createElement(o.Dy.h1,{variant:m?o.Dy.cello:o.Dy.alto,className:i},l),A().createElement(o.Dy,{variant:m?o.Dy.mesto:o.Dy.ballad,className:d},a),r&&(T||C)&&A().createElement(E.z,{version:"secondary",className:s,linkTo:T,onClick:C},r))}))},61048:(e,t,a)=>{a.d(t,{K:()=>_});var l=a(67294),A=a.n(l),r=a(94184),n=a.n(r),o=a(86912),E=a(47130),D=a(79202),c=a(17231),s=a(20657),i=a(49023),d=a(64005),u=a(44503),T=a(22423);const C={filterInputContainer:"B7_h6cZR5grqTbBKvSs9",expanded:"Fi2Rpg_rGu3XZkMjdpU8",expandButton:"_IpuqxWXxHiUUiIq7uH4",filterInput:"JPrAV8zjE6LXyDQ3sCcg",overlay:"m5SIeVCyKlHHwhQgg5tg",searchIconContainer:"jmDgrWNcOkndhQMPKu4y",searchIcon:"l4VNYBsstoI0RrHWf7tw",clearButton:"lSWQl_XnpXurz5WK2mpA"},_=A().memo((({alwaysExpanded:e=!1,placeholder:t,filterBoxApiRef:a,outerRef:r})=>{const _=(0,c.W6)(u.DW),{filter:L,setFilter:S}=(0,l.useContext)(T.fo),[m,R]=(0,l.useState)(e||!!L),[I,O]=(0,l.useState)(L),N=(0,l.useRef)(null),y=null!=r?r:N;(0,i.J4)(i.sN.FILTER);const k=(0,d.y)((e=>{S(e)}),200),p=(0,l.useCallback)((()=>{O(""),k("")}),[O,k]);(0,l.useImperativeHandle)(a,(()=>({clearFilter:p})));const M=(0,l.useCallback)((()=>{var e;R(!0),null===(e=y.current)||void 0===e||e.focus()}),[R,y]);(0,i.eY)(i.O4.FILTER,M);const B=(0,l.useCallback)((e=>{const t=e.currentTarget.value;O(t),k(t)}),[k,O]),b=(0,l.useCallback)((()=>{var e;null===(e=y.current)||void 0===e||e.focus(),p()}),[p,y]),P=(0,l.useCallback)((()=>{I||e||R(!1)}),[I,e,R]),h=(0,l.useCallback)((e=>{"Escape"===e.key&&I&&b()}),[I,b]),f=_?o.z:E.h;return A().createElement("div",{className:n()(C.filterInputContainer,{[C.expanded]:m}),role:"search"},A().createElement("input",{ref:y,className:n()(C.filterInput),role:"searchbox",maxLength:80,autoCorrect:"off",autoCapitalize:"off",spellCheck:!1,placeholder:t,onChange:B,onKeyDown:h,onBlur:P,value:I,"aria-hidden":!m,tabIndex:m?void 0:-1}),A().createElement("div",{className:C.overlay},A().createElement("span",{className:C.searchIconContainer},A().createElement(f,{iconSize:16,className:C.searchIcon,"aria-hidden":!0})),I&&A().createElement("button",{className:C.clearButton,onClick:b,"aria-label":s.ag.get("search.a11y.clear-input")},A().createElement(D.j,{iconSize:16,className:C.filterInputIcon}))),A().createElement("button",{className:C.expandButton,onClick:M,"data-testid":"expand-button","aria-hidden":m,tabIndex:m?-1:void 0},A().createElement(f,{iconSize:16,className:C.searchIcon})))}))},95289:(e,t,a)=>{a.d(t,{A:()=>S});var l=a(67294),A=a.n(l),r=a(94184),n=a.n(r);const o="_o8Iuf_330KFh6L9Os2E",E="NKjPwGdhYsd76cjIEqwP";var D=a(76343),c=a(26115),s=a(74594),i=a(20246),d=a(30005),u=a(21691),T=a(6577),C=a(62012),_=a(28248);const L=({selected:e,onSelect:t,options:a,sortOrder:l})=>{let r;return l&&(l===_.kn.ASC||l===_.kn.SECONDARY_ASC?r=A().createElement(T.c,{iconSize:16}):l!==_.kn.DESC&&l!==_.kn.SECONDARY_DESC||(r=A().createElement(C.e,{iconSize:16}))),A().createElement(d.v,null,a.map((({key:a,value:l})=>A().createElement(u.s,{role:"menuitemradio","aria-checked":a===e.key&&!r,key:a,onClick:()=>t(a),icon:a===e.key&&r},A().createElement(D.Dy,{variant:D.Dy.mesto},l)))))};const S=({options:e,selected:t,onSelect:a,isSelectionChanged:l,sortOrder:r,variant:d=D.Dy.mesto,color:u})=>{const[T]=e;t||(t=T);const C=l?l(t):t!==T;return A().createElement(i.y,{renderInline:!0,menu:A().createElement(L,{selected:t,options:e,onSelect:a,sortOrder:r})},((e,a,l)=>A().createElement("button",{className:n()(o,{[E]:C}),onClick:a,ref:l,type:"button"},A().createElement(D.Dy,{variant:d,color:u},t.value),e?A().createElement(c.q,{iconSize:16}):A().createElement(s.m,{iconSize:16}))))}},5292:(e,t,a)=>{a.d(t,{oT:()=>D,ei:()=>s,MY:()=>i,Ru:()=>d,Aq:()=>T,o$:()=>C,e3:()=>L,a6:()=>S,EY:()=>R,$2:()=>I,sv:()=>N,_s:()=>y,w0:()=>k,pT:()=>M,WQ:()=>h,mE:()=>f});var l=a(74483),A=a(9659),r=a(20657),n=a(78462),o=a(36132),E=a(28248);let D;!function(e){e.SHOW_ALPHABETICAL="SHOW_ALPHABETICAL",e.EPISODE_ALPHABETICAL="EPISODE_ALPHABETICAL",e.PLAYLIST_ALPHABETICAL="PLAYLIST_ALPHABETICAL",e.ALBUM_ALPHABETICAL="ALBUM_ALPHABETICAL",e.ADDED_AT="ADDED_AT",e.CREATOR_NAME="CREATOR_NAME",e.CREATOR_NAME_ALPHABETICAL="CREATOR_NAME_ALPHABETICAL",e.ALBUM_CREATOR_NAME="ALBUM_CREATOR_NAME",e.RECENTLY_PLAYED="RECENTLY_PLAYED",e.MOST_RELEVANT="MOST_RELEVANT",e.CUSTOM_ORDER="CUSTOM_ORDER"}(D||(D={}));const c={[l.yW.NAME]:o.hI.TITLE,[l.yW.SHOW_NAME]:o.hI.SHOW,[l.yW.ADDED_AT]:o.hI.ADDED_AT},s={"show-alphabetical":D.SHOW_ALPHABETICAL,"episode-alphabetical":D.EPISODE_ALPHABETICAL,"playlist-alphabetical":D.PLAYLIST_ALPHABETICAL,"album-alphabetical":D.ALBUM_ALPHABETICAL,"recently-added":D.ADDED_AT,"creator-name":D.CREATOR_NAME,"creator-name-alphabetical":D.CREATOR_NAME_ALPHABETICAL,"album-creator-name":D.ALBUM_CREATOR_NAME,"recently-played":D.RECENTLY_PLAYED,"playlist-most-relevant":D.MOST_RELEVANT,"playlist-custom-order":D.CUSTOM_ORDER},i={[D.RECENTLY_PLAYED]:{key:"recently-played",value:r.ag.get("collection.sort.recently-played")},[D.ADDED_AT]:{key:"recently-added",value:r.ag.get("collection.sort.recently-added")},[D.SHOW_ALPHABETICAL]:{key:"show-alphabetical",value:r.ag.get("collection.sort.alphabetical")},[D.EPISODE_ALPHABETICAL]:{key:"episode-alphabetical",value:r.ag.get("collection.sort.alphabetical")},[D.PLAYLIST_ALPHABETICAL]:{key:"playlist-alphabetical",value:r.ag.get("collection.sort.alphabetical")},[D.ALBUM_CREATOR_NAME]:{key:"album-creator-name",value:r.ag.get("collection.sort.creator")},[D.CREATOR_NAME]:{key:"creator-name",value:r.ag.get("collection.sort.creator")},[D.CREATOR_NAME_ALPHABETICAL]:{key:"creator-name-alphabetical",value:r.ag.get("collection.sort.alphabetical")},[D.ALBUM_ALPHABETICAL]:{key:"album-alphabetical",value:r.ag.get("collection.sort.alphabetical")},[D.MOST_RELEVANT]:{key:"playlist-most-relevant",value:r.ag.get("collection.sort.most-relevant")},[D.CUSTOM_ORDER]:{key:"playlist-custom-order",value:r.ag.get("collection.sort.custom-order")}},d=[D.ADDED_AT,D.ALBUM_ALPHABETICAL,D.CREATOR_NAME],u={[D.ADDED_AT]:{field:l.lY.ADDED_AT,order:l.As.DESC},[D.ALBUM_ALPHABETICAL]:{field:l.lY.NAME,order:l.As.ASC},[D.CREATOR_NAME]:{field:l.lY.ARTIST_NAME,order:l.As.ASC}},T=e=>{if(d.includes(e))return u[e]},C=[D.ADDED_AT,D.CREATOR_NAME_ALPHABETICAL],_={[D.ADDED_AT]:{field:l.hx.ADDED_AT,order:l.As.DESC},[D.CREATOR_NAME_ALPHABETICAL]:{field:l.hx.NAME,order:l.As.ASC}},L=e=>{if(C.includes(e))return _[e]},S=[D.ADDED_AT,D.SHOW_ALPHABETICAL],m={[D.ADDED_AT]:{field:l.hx.ADDED_AT,order:l.As.DESC},[D.SHOW_ALPHABETICAL]:{field:l.aW.NAME,order:l.As.ASC}},R=e=>{if(S.includes(e))return m[e]},I=[D.ADDED_AT,D.CREATOR_NAME,D.EPISODE_ALPHABETICAL],O={[D.ADDED_AT]:{field:l.yW.ADDED_AT,order:l.As.DESC},[D.CREATOR_NAME]:{field:l.yW.SHOW_NAME,order:l.As.ASC},[D.EPISODE_ALPHABETICAL]:{field:l.yW.NAME,order:l.As.ASC}},N=e=>{if(I.includes(e))return O[e]},y=e=>{if(!I.includes(e))return;const t=N(e);if(null==t||!t.field)return;const a=c[t.field];if(!a)return;return o.Vd[a].map((e=>t.order?`${e} ${t.order}`:e)).join(",")},k=[D.MOST_RELEVANT,D.RECENTLY_PLAYED,D.ADDED_AT,D.PLAYLIST_ALPHABETICAL,D.CUSTOM_ORDER],p={[D.ADDED_AT]:{field:A.bD.ADDED_AT,order:A.As.DESC},[D.RECENTLY_PLAYED]:{field:A.bD.RECENTLY_PLAYED,order:A.As.ASC},[D.PLAYLIST_ALPHABETICAL]:{field:A.bD.NAME,order:A.As.ASC},[D.MOST_RELEVANT]:{field:A.bD.RELEVANCE,order:A.As.DESC},[D.CUSTOM_ORDER]:void 0},M=e=>{if(k.includes(e))return p[e]},B={"custom-order":n.I5,title:{column:E.QD.TITLE,order:E.kn.ASC},artist:{column:E.QD.TITLE,order:E.kn.SECONDARY_ASC},"added-by":{column:E.QD.ADDED_BY,order:E.kn.ASC},"added-at":{column:E.QD.ADDED_AT,order:E.kn.ASC},duration:{column:E.QD.DURATION,order:E.kn.ASC},album:{column:E.QD.ALBUM,order:E.kn.ASC},"album-or-podcast":{column:E.QD.ALBUM_OR_PODCAST,order:E.kn.ASC},"album-or-show":{column:E.QD.ALBUM_OR_SHOW,order:E.kn.ASC}},b={title:E.QD.TITLE,artist:E.QD.TITLE,"added-by":E.QD.ADDED_BY,"added-at":E.QD.ADDED_AT,duration:E.QD.DURATION,album:E.QD.ALBUM,"album-or-podcast":E.QD.ALBUM_OR_PODCAST,"album-or-show":E.QD.ALBUM_OR_SHOW},P={[E.kn.NONE]:E.kn.NONE,[E.kn.ASC]:E.kn.DESC,[E.kn.DESC]:E.kn.ASC,[E.kn.SECONDARY_ASC]:E.kn.SECONDARY_DESC,[E.kn.SECONDARY_DESC]:E.kn.SECONDARY_ASC},h=(e,t,a)=>e?t!==b[e]||"artist"===e&&[E.kn.ASC,E.kn.DESC].includes(a)||"title"===e&&[E.kn.SECONDARY_ASC,E.kn.SECONDARY_DESC].includes(a)?B[e]:{column:b[e],order:P[a]}:n.I5,f={[E.QD.INDEX]:{key:"custom-order",value:r.ag.get("sort.custom-order")},[E.QD.TITLE]:{key:"title",value:r.ag.get("sort.title")},[E.QD.ARTIST]:{key:"artist",value:r.ag.get("sort.artist")},[E.QD.ADDED_BY]:{key:"added-by",value:r.ag.get("sort.added-by")},[E.QD.ADDED_AT]:{key:"added-at",value:r.ag.get("sort.date-added")},[E.QD.DURATION]:{key:"duration",value:r.ag.get("sort.duration")},[E.QD.EVENT_DATE]:null,[E.QD.ALBUM]:{key:"album",value:r.ag.get("sort.album")},[E.QD.ALBUM_OR_PODCAST]:{key:"album-or-podcast",value:r.ag.get("sort.album-or-podcast")},[E.QD.ALBUM_OR_SHOW]:{key:"album-or-show",value:r.ag.get("sort.album-or-show")},[E.QD.PLAYS]:null,[E.QD.RELEASE_DATE]:null,[E.QD.ADD]:null,[E.QD.ACTIONS]:null}},78462:(e,t,a)=>{a.d(t,{P0:()=>E,MI:()=>D,RJ:()=>c,zq:()=>s,I5:()=>i,Gb:()=>d,kz:()=>u});var l=a(67294),A=a.n(l),r=a(73785),n=a(22583),o=a(28248);const E=[o.QD.INDEX,o.QD.TITLE,o.QD.ALBUM,o.QD.ADDED_AT],D=[o.QD.INDEX,o.QD.TITLE,o.QD.ALBUM,o.QD.DURATION],c=[o.QD.INDEX,o.QD.TITLE,o.QD.ALBUM,o.QD.DURATION],s=[o.QD.INDEX,o.QD.TITLE,o.QD.ALBUM,o.QD.ALBUM_OR_PODCAST,o.QD.ADDED_BY,o.QD.ADDED_AT,o.QD.DURATION],i={column:null,order:r.k.NONE},d=(0,l.createContext)({setSortState:()=>{throw new Error("setSortState must be used within a TracksSortProvider")},sortState:i}),u=A().memo((function({uri:e,children:t}){return A().createElement(n.r,{uri:e,defaultState:i,sortContext:d},t)}))}}]);
//# sourceMappingURL=367.js.map