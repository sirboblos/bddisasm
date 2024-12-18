    bits 64
        
    db 0xc4, 0xe2, 0x78, 0x49, 0x00         ; LDTILECFG zmmword ptr [rax]
    db 0xc4, 0xe2, 0x79, 0x49, 0x00         ; STTILECFG zmmword ptr [rax]
    
    db 0xc4, 0xe2, 0x7A, 0x5c, 0xF4         ; TDPBF16PS tmm6, tmm4, tmm0
    
    db 0xc4, 0xe2, 0x78, 0x5e, 0xF4         ; TDPBUUD   tmm6, tmm4, tmm0
    db 0xc4, 0xe2, 0x79, 0x5e, 0xF4         ; TDPBUSD   tmm6, tmm4, tmm0
    db 0xc4, 0xe2, 0x7A, 0x5e, 0xF4         ; TDPBSUD   tmm6, tmm4, tmm0
    db 0xc4, 0xe2, 0x7B, 0x5e, 0xF4         ; TDPBSSD   tmm6, tmm4, tmm0
    
    db 0xc4, 0xe2, 0x79, 0x4b, 0x04, 0x00   ; TILELOADDT1 tmm0, [rax+rax]
    db 0xc4, 0xe2, 0x7b, 0x4b, 0x04, 0x00   ; TILELOADD tmm0, [rax+rax]
    db 0xc4, 0xe2, 0x7a, 0x4b, 0x04, 0x00   ; TILESTORED tmm0, [rax+rax]
    
    db 0xc4, 0xe2, 0x79, 0x4b, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00   ; TILELOADDT1 tmm0, [rax+rax+0]
    db 0xc4, 0xe2, 0x7b, 0x4b, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00   ; TILELOADD tmm0, [rax+rax+0]
    db 0xc4, 0xe2, 0x7a, 0x4b, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00   ; TILESTORED tmm0, [rax+rax+0]
    
    db 0xc4, 0xe2, 0x78, 0x49, 0xC0         ; TILERELEASE
    db 0xc4, 0xe2, 0x7b, 0x49, 0xC0         ; TILEZERO  tmm0
    db 0xc4, 0xe2, 0x7b, 0x49, 0xf8         ; TILEZERO  tmm7

    db 0xc4, 0xe2, 0x7b, 0x5C, 0xF4         ; TDPFP16PS tmm6, tmm4, tmm0
    
    db 0xc4, 0xe2, 0x78, 0x6C, 0xF4         ; TCMMRLFP16PS   tmm6, tmm4, tmm0
    db 0xc4, 0xe2, 0x79, 0x6C, 0xF4         ; TCMMIMFP16PS   tmm6, tmm4, tmm
    
    db 0xc4, 0xe2, 0x78, 0x48, 0xcf         ; TTMMULTF32PS tmm1, tmm7, tmm0
    db 0xc4, 0xe2, 0x79, 0x48, 0xcf         ; TMMULTF32PS tmm1, tmm7, tmm0
    db 0xc4, 0xe2, 0x79, 0x4a, 0x04, 0x11   ; TILELOADDRST1 tmm0, [rcx+rdx]
    db 0xc4, 0xe2, 0x7b, 0x4a, 0x04, 0x11   ; TILELOADDRS tmm0, [rcx+rdx]
    db 0xc4, 0xe2, 0x7a, 0x5f, 0xcd         ; TTRANSPOSED tmm1, tmm5
    db 0xc4, 0xe2, 0x78, 0x6b, 0xcd         ; TCONJTCMMIMFP16PS tmm1, tmm5, tmm0
    db 0xc4, 0xe2, 0x78, 0x6b, 0xcd         ; TCONJTCMMIMFP16PS tmm1, tmm5, tmm0
    db 0xc4, 0xe2, 0x79, 0x6b, 0xcd         ; TCONJTFP16 tmm1, tmm5
    db 0xc4, 0xe2, 0x7a, 0x6b, 0xcd         ; TTCMMRLFP16PS tmm1, tmm5, tmm0
    db 0xc4, 0xe2, 0x7b, 0x6b, 0xcd         ; TTCMMIMFP16PS tmm1, tmm5, tmm0
    db 0xc4, 0xe2, 0x7a, 0x6c, 0xcd         ; TTDPBF16PS tmm1, tmm5, tmm0
    db 0xc4, 0xe2, 0x7b, 0x6c, 0xcd         ; TTDPFP16PS tmm1, tmm5, tmm0
    db 0xc4, 0xe2, 0x78, 0x6e, 0x04, 0x11   ; T2RPNTLVWZ0 tmm0+1, [rcx+rdx]
    db 0xc4, 0xe2, 0x79, 0x6e, 0x04, 0x11   ; T2RPNTLVWZ1 tmm0+1, [rcx+rdx]
    db 0xc4, 0xe2, 0x78, 0x6f, 0x04, 0x11   ; T2RPNTLVWZ0T1 tmm0+1, [rcx+rdx]
    db 0xc4, 0xe2, 0x79, 0x6f, 0x04, 0x11   ; T2RPNTLVWZ1T1 tmm0+1, [rcx+rdx]
    
    db 0xc4, 0xe5, 0x78, 0xf8, 0x04, 0x11   ; T2RPNTLVWZ0RS tmm0+1, [rcx+rdx]
    db 0xc4, 0xe5, 0x79, 0xf8, 0x04, 0x11   ; T2RPNTLVWZ1RS tmm0+1, [rcx+rdx]
    db 0xc4, 0xe5, 0x78, 0xf9, 0x04, 0x11   ; T2RPNTLVWZ0RST1 tmm0+1, [rcx+rdx]
    db 0xc4, 0xe5, 0x79, 0xf9, 0x04, 0x11   ; T2RPNTLVWZ1RST1 tmm0+1, [rcx+rdx]
    db 0xc4, 0xe5, 0x78, 0xfd, 0xcd         ; TDPBF8PS  tmm1, tmm5, tmm0
    db 0xc4, 0xe5, 0x79, 0xfd, 0xcd         ; TDPHF8PS  tmm1, tmm5, tmm0
    db 0xc4, 0xe5, 0x7a, 0xfd, 0xcd         ; TDPHBF8PS tmm1, tmm5, tmm0
    db 0xc4, 0xe5, 0x7b, 0xfd, 0xcd         ; TDPBHF8PS tmm1, tmm5, tmm0
