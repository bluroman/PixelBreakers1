varying vec2 v_texcoord;
varying vec4 v_color;
uniform float time;

void main()
{
    
  vec2 tc = v_texcoord.xy;
  vec2 p = -1.0 + 2.0 * tc;
  float len = length(p);
  vec2 uv = tc + (p/len)*cos(len*12.0-time*4.0)*0.03;
  vec3 col = texture2D(gm_BaseTexture,uv).xyz;
  gl_FragColor = vec4(col,1.0);  
  
}
