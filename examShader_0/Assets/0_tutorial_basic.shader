//https://docs.unity3d.com/kr/current/Manual/ShaderTut1.html

//이것은 “Main Color”라는 색상 프로퍼티를 정의하고, 이에 장미와 같은 색상(빨강=100%, 녹색=50%, 파랑=50%, 알파=100%)의 기본값을 할당합니다. 
//다음 Pass를 호출해 오브젝트를 렌더링하고 해당 패스에서 디퓨즈 메테리얼 컴포넌트를 프로퍼티 “_Color”로 설정하고 정점 당 라이팅을 켭니다.
Shader "Tutorial/Basic" 
{
    Properties 
	{
        _Color ("Main Color", Color) = (1,0.5,0.5,1)
    }
    SubShader 
	{
        Pass 
		{
            Material 
			{
                Diffuse [_Color]
            }
            Lighting On
        }
    }
}



//모든 쉐이더는 키워드 Shader 로 시작하여, 그 뒤에 쉐이더의 이름을 나타내는 문자열이 이어집니다. 
//이것은 Inspector 에 표시되는 이름입니다. 이 쉐이더의 모든 코드는 다음의 중괄호 안에 넣어져야 합니다. { } (블록이라고 합니다).

//이름은 짧고 서술적이어야 합니다. 이것은 .shader 파일 이름에 일치할 필요는 없습니다.
//Unity 하위 메뉴에 쉐이더를 두려면, 슬래시를 사용합니다(예 : MyShaders/Test 는 MyShaders/Test 또는 MyShaders->Test 하위 메뉴에서 Test로 표시됩니다).
//이 쉐이더는 “SubShader” 블록이 뒤에 오는 “Properties” 블록으로 구성됩니다. 이들은 각각 아래의 섹션에서 설명하겠습니다.

//프로퍼티

//쉐이더 블록의 최초에, Material Inspector에서 아티스트가 편집할 수 있는 프로퍼티를 정의할 수 있습니다. 
//“VertexLit”의 예제에서 이 프로퍼티는 다음과 같이 보입니다.






//Shader "Custom/NewSurfaceShader" {
//	Properties {
//		_Color ("Color", Color) = (1,1,1,1)
//		_MainTex ("Albedo (RGB)", 2D) = "white" {}
//		_Glossiness ("Smoothness", Range(0,1)) = 0.5
//		_Metallic ("Metallic", Range(0,1)) = 0.0
//	}
//	SubShader {
//		Tags { "RenderType"="Opaque" }
//		LOD 200
		
//		CGPROGRAM
//		// Physically based Standard lighting model, and enable shadows on all light types
//		#pragma surface surf Standard fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
//		#pragma target 3.0

//		sampler2D _MainTex;

//		struct Input {
//			float2 uv_MainTex;
//		};

//		half _Glossiness;
//		half _Metallic;
//		fixed4 _Color;

//		void surf (Input IN, inout SurfaceOutputStandard o) {
//			// Albedo comes from a texture tinted by color
//			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
//			o.Albedo = c.rgb;
//			// Metallic and smoothness come from slider variables
//			o.Metallic = _Metallic;
//			o.Smoothness = _Glossiness;
//			o.Alpha = c.a;
//		}
//		ENDCG
//	}
//	FallBack "Diffuse"
//}

