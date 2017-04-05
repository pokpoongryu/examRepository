//이 쉐이더는 고정 함수 파이프 라인을 사용하여 표준 정점 당 라이팅을 실행합니다.
Shader "Tutorial/VertexLit" 
{
    Properties 
	{
        _Color ("Main Color", Color) = (1,1,1,0.5)
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        _Emission ("Emmisive Color", Color) = (0,0,0,0)
        _Shininess ("Shininess", Range (0.01, 1)) = 0.7
        _MainTex ("Base (RGB)", 2D) = "white" { }
    }

    SubShader 
	{
        Pass 
		{
            Material 
			{
                Diffuse [_Color]
                Ambient [_Color]
                Shininess [_Shininess]
                Specular [_SpecColor]
                Emission [_Emission]
            }
            
			Lighting On
            SeparateSpecular On

            SetTexture [_MainTex] 
			{
                constantColor [_Color]
                Combine texture * primary DOUBLE, texture * constant
            }
        }
    }
}