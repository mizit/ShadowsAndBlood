//
// There is creating mask.
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.rgb = vec3(0.0);
	gl_FragColor.a = 1.0 - gl_FragColor.a;
}
