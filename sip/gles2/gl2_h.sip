/*
 * This is the SIP interface definitions corresponding to the gl2.h file for
 * the gles2 module of pogles.
 *
 * Copyright (c) 2012 Riverbank Computing Limited
 *
 * This file is part of pogles.
 *
 * This copy of pogles is licensed for use under the terms of the BSD license.
 *
 * pogles is supplied WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */


%ModuleHeaderCode
#include <GLES2/gl2.h>
#define GL_HALF_FLOAT_OES 0x8d61
%End


/*-------------------------------------------------------------------------
 * Data type definitions
 *-----------------------------------------------------------------------*/

typedef void GLvoid;
typedef char GLchar;
typedef unsigned int GLenum;
typedef bool GLboolean;
typedef unsigned int GLbitfield;
//typedef khronos_int8_t   GLbyte;
//typedef short            GLshort;
typedef int GLint;
typedef int GLsizei;
typedef char GLubyte;
//typedef unsigned short   GLushort;
typedef unsigned int GLuint;
typedef float GLfloat;
typedef float GLclampf;
//typedef khronos_int32_t  GLfixed;

/* GL types for handling large vertex buffer objects */
typedef long GLintptr;
typedef long GLsizeiptr;

/* OpenGL ES core versions */
const int GL_ES_VERSION_2_0;

/* ClearBufferMask */
const int GL_DEPTH_BUFFER_BIT;
const int GL_STENCIL_BUFFER_BIT;
const int GL_COLOR_BUFFER_BIT;

/* Boolean */
//#define GL_FALSE                          0
//#define GL_TRUE                           1

/* BeginMode */
const int GL_POINTS;
const int GL_LINES;
const int GL_LINE_LOOP;
const int GL_LINE_STRIP;
const int GL_TRIANGLES;
const int GL_TRIANGLE_STRIP;
const int GL_TRIANGLE_FAN;

/* AlphaFunction (not supported in ES20) */
/*      GL_NEVER */
/*      GL_LESS */
/*      GL_EQUAL */
/*      GL_LEQUAL */
/*      GL_GREATER */
/*      GL_NOTEQUAL */
/*      GL_GEQUAL */
/*      GL_ALWAYS */

/* BlendingFactorDest */
const int GL_ZERO;
const int GL_ONE;
const int GL_SRC_COLOR;
const int GL_ONE_MINUS_SRC_COLOR;
const int GL_SRC_ALPHA;
const int GL_ONE_MINUS_SRC_ALPHA;
const int GL_DST_ALPHA;
const int GL_ONE_MINUS_DST_ALPHA;

/* BlendingFactorSrc */
/*      GL_ZERO */
/*      GL_ONE */
const int GL_DST_COLOR;
const int GL_ONE_MINUS_DST_COLOR;
const int GL_SRC_ALPHA_SATURATE;
/*      GL_SRC_ALPHA */
/*      GL_ONE_MINUS_SRC_ALPHA */
/*      GL_DST_ALPHA */
/*      GL_ONE_MINUS_DST_ALPHA */

/* BlendEquationSeparate */
const int GL_FUNC_ADD;
const int GL_BLEND_EQUATION;
const int GL_BLEND_EQUATION_RGB;
const int GL_BLEND_EQUATION_ALPHA;

/* BlendSubtract */
const int GL_FUNC_SUBTRACT;
const int GL_FUNC_REVERSE_SUBTRACT;

/* Separate Blend Functions */
const int GL_BLEND_DST_RGB;
const int GL_BLEND_SRC_RGB;
const int GL_BLEND_DST_ALPHA;
const int GL_BLEND_SRC_ALPHA;
const int GL_CONSTANT_COLOR;
const int GL_ONE_MINUS_CONSTANT_COLOR;
const int GL_CONSTANT_ALPHA;
const int GL_ONE_MINUS_CONSTANT_ALPHA;
const int GL_BLEND_COLOR;

/* Buffer Objects */
const int GL_ARRAY_BUFFER;
const int GL_ELEMENT_ARRAY_BUFFER;
const int GL_ARRAY_BUFFER_BINDING;
const int GL_ELEMENT_ARRAY_BUFFER_BINDING;

const int GL_STREAM_DRAW;
const int GL_STATIC_DRAW;
const int GL_DYNAMIC_DRAW;

const int GL_BUFFER_SIZE;
const int GL_BUFFER_USAGE;

const int GL_CURRENT_VERTEX_ATTRIB;

/* CullFaceMode */
const int GL_FRONT;
const int GL_BACK;
const int GL_FRONT_AND_BACK;

/* DepthFunction */
/*      GL_NEVER */
/*      GL_LESS */
/*      GL_EQUAL */
/*      GL_LEQUAL */
/*      GL_GREATER */
/*      GL_NOTEQUAL */
/*      GL_GEQUAL */
/*      GL_ALWAYS */

/* EnableCap */
const int GL_TEXTURE_2D;
const int GL_CULL_FACE;
const int GL_BLEND;
const int GL_DITHER;
const int GL_STENCIL_TEST;
const int GL_DEPTH_TEST;
const int GL_SCISSOR_TEST;
const int GL_POLYGON_OFFSET_FILL;
const int GL_SAMPLE_ALPHA_TO_COVERAGE;
const int GL_SAMPLE_COVERAGE;

/* ErrorCode */
const int GL_NO_ERROR;
const int GL_INVALID_ENUM;
const int GL_INVALID_VALUE;
const int GL_INVALID_OPERATION;
const int GL_OUT_OF_MEMORY;

/* FrontFaceDirection */
const int GL_CW;
const int GL_CCW;

/* GetPName */
const int GL_LINE_WIDTH;
const int GL_ALIASED_POINT_SIZE_RANGE;
const int GL_ALIASED_LINE_WIDTH_RANGE;
const int GL_CULL_FACE_MODE;
const int GL_FRONT_FACE;
const int GL_DEPTH_RANGE;
const int GL_DEPTH_WRITEMASK;
const int GL_DEPTH_CLEAR_VALUE;
const int GL_DEPTH_FUNC;
const int GL_STENCIL_CLEAR_VALUE;
const int GL_STENCIL_FUNC;
const int GL_STENCIL_FAIL;
const int GL_STENCIL_PASS_DEPTH_FAIL;
const int GL_STENCIL_PASS_DEPTH_PASS;
const int GL_STENCIL_REF;
const int GL_STENCIL_VALUE_MASK;
const int GL_STENCIL_WRITEMASK;
const int GL_STENCIL_BACK_FUNC;
const int GL_STENCIL_BACK_FAIL;
const int GL_STENCIL_BACK_PASS_DEPTH_FAIL;
const int GL_STENCIL_BACK_PASS_DEPTH_PASS;
const int GL_STENCIL_BACK_REF;
const int GL_STENCIL_BACK_VALUE_MASK;
const int GL_STENCIL_BACK_WRITEMASK;
const int GL_VIEWPORT;
const int GL_SCISSOR_BOX;
/*      GL_SCISSOR_TEST */
const int GL_COLOR_CLEAR_VALUE;
const int GL_COLOR_WRITEMASK;
const int GL_UNPACK_ALIGNMENT;
const int GL_PACK_ALIGNMENT;
const int GL_MAX_TEXTURE_SIZE;
const int GL_MAX_VIEWPORT_DIMS;
const int GL_SUBPIXEL_BITS;
const int GL_RED_BITS;
const int GL_GREEN_BITS;
const int GL_BLUE_BITS;
const int GL_ALPHA_BITS;
const int GL_DEPTH_BITS;
const int GL_STENCIL_BITS;
const int GL_POLYGON_OFFSET_UNITS;
/*      GL_POLYGON_OFFSET_FILL */
const int GL_POLYGON_OFFSET_FACTOR;
const int GL_TEXTURE_BINDING_2D;
const int GL_SAMPLE_BUFFERS;
const int GL_SAMPLES;
const int GL_SAMPLE_COVERAGE_VALUE;
const int GL_SAMPLE_COVERAGE_INVERT;

/* GetTextureParameter */
/*      GL_TEXTURE_MAG_FILTER */
/*      GL_TEXTURE_MIN_FILTER */
/*      GL_TEXTURE_WRAP_S */
/*      GL_TEXTURE_WRAP_T */

const int GL_NUM_COMPRESSED_TEXTURE_FORMATS;
const int GL_COMPRESSED_TEXTURE_FORMATS;

/* HintMode */
const int GL_DONT_CARE;
const int GL_FASTEST;
const int GL_NICEST;

/* HintTarget */
const int GL_GENERATE_MIPMAP_HINT;

/* DataType */
const int GL_BYTE;
const int GL_UNSIGNED_BYTE;
const int GL_SHORT;
const int GL_UNSIGNED_SHORT;
const int GL_INT;
const int GL_UNSIGNED_INT;
const int GL_FLOAT;
const int GL_FIXED;

/* PixelFormat */
const int GL_DEPTH_COMPONENT;
const int GL_ALPHA;
const int GL_RGB;
const int GL_RGBA;
const int GL_LUMINANCE;
const int GL_LUMINANCE_ALPHA;

/* PixelType */
/*      GL_UNSIGNED_BYTE */
const int GL_UNSIGNED_SHORT_4_4_4_4;
const int GL_UNSIGNED_SHORT_5_5_5_1;
const int GL_UNSIGNED_SHORT_5_6_5;

/* Shaders */
const int GL_FRAGMENT_SHADER;
const int GL_VERTEX_SHADER;
const int GL_MAX_VERTEX_ATTRIBS;
const int GL_MAX_VERTEX_UNIFORM_VECTORS;
const int GL_MAX_VARYING_VECTORS;
const int GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
const int GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
const int GL_MAX_TEXTURE_IMAGE_UNITS;
const int GL_MAX_FRAGMENT_UNIFORM_VECTORS;
const int GL_SHADER_TYPE;
const int GL_DELETE_STATUS;
const int GL_LINK_STATUS;
const int GL_VALIDATE_STATUS;
const int GL_ATTACHED_SHADERS;
const int GL_ACTIVE_UNIFORMS;
const int GL_ACTIVE_UNIFORM_MAX_LENGTH;
const int GL_ACTIVE_ATTRIBUTES;
const int GL_ACTIVE_ATTRIBUTE_MAX_LENGTH;
const int GL_SHADING_LANGUAGE_VERSION;
const int GL_CURRENT_PROGRAM;

/* StencilFunction */
const int GL_NEVER;
const int GL_LESS;
const int GL_EQUAL;
const int GL_LEQUAL;
const int GL_GREATER;
const int GL_NOTEQUAL;
const int GL_GEQUAL;
const int GL_ALWAYS;

/* StencilOp */
/*      GL_ZERO */
const int GL_KEEP;
const int GL_REPLACE;
const int GL_INCR;
const int GL_DECR;
const int GL_INVERT;
const int GL_INCR_WRAP;
const int GL_DECR_WRAP;

/* StringName */
const int GL_VENDOR;
const int GL_RENDERER;
const int GL_VERSION;
const int GL_EXTENSIONS;

/* TextureMagFilter */
const int GL_NEAREST;
const int GL_LINEAR;

/* TextureMinFilter */
/*      GL_NEAREST */
/*      GL_LINEAR */
const int GL_NEAREST_MIPMAP_NEAREST;
const int GL_LINEAR_MIPMAP_NEAREST;
const int GL_NEAREST_MIPMAP_LINEAR;
const int GL_LINEAR_MIPMAP_LINEAR;

/* TextureParameterName */
const int GL_TEXTURE_MAG_FILTER;
const int GL_TEXTURE_MIN_FILTER;
const int GL_TEXTURE_WRAP_S;
const int GL_TEXTURE_WRAP_T;

/* TextureTarget */
/*      GL_TEXTURE_2D */
const int GL_TEXTURE;

const int GL_TEXTURE_CUBE_MAP;
const int GL_TEXTURE_BINDING_CUBE_MAP;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_X;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
const int GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
const int GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
const int GL_MAX_CUBE_MAP_TEXTURE_SIZE;

/* TextureUnit */
const int GL_TEXTURE0;
const int GL_TEXTURE1;
const int GL_TEXTURE2;
const int GL_TEXTURE3;
const int GL_TEXTURE4;
const int GL_TEXTURE5;
const int GL_TEXTURE6;
const int GL_TEXTURE7;
const int GL_TEXTURE8;
const int GL_TEXTURE9;
const int GL_TEXTURE10;
const int GL_TEXTURE11;
const int GL_TEXTURE12;
const int GL_TEXTURE13;
const int GL_TEXTURE14;
const int GL_TEXTURE15;
const int GL_TEXTURE16;
const int GL_TEXTURE17;
const int GL_TEXTURE18;
const int GL_TEXTURE19;
const int GL_TEXTURE20;
const int GL_TEXTURE21;
const int GL_TEXTURE22;
const int GL_TEXTURE23;
const int GL_TEXTURE24;
const int GL_TEXTURE25;
const int GL_TEXTURE26;
const int GL_TEXTURE27;
const int GL_TEXTURE28;
const int GL_TEXTURE29;
const int GL_TEXTURE30;
const int GL_TEXTURE31;
const int GL_ACTIVE_TEXTURE;

/* TextureWrapMode */
const int GL_REPEAT;
const int GL_CLAMP_TO_EDGE;
const int GL_MIRRORED_REPEAT;

/* Uniform Types */
const int GL_FLOAT_VEC2;
const int GL_FLOAT_VEC3;
const int GL_FLOAT_VEC4;
const int GL_INT_VEC2;
const int GL_INT_VEC3;
const int GL_INT_VEC4;
const int GL_BOOL;
const int GL_BOOL_VEC2;
const int GL_BOOL_VEC3;
const int GL_BOOL_VEC4;
const int GL_FLOAT_MAT2;
const int GL_FLOAT_MAT3;
const int GL_FLOAT_MAT4;
const int GL_SAMPLER_2D;
const int GL_SAMPLER_CUBE;

/* Vertex Arrays */
const int GL_VERTEX_ATTRIB_ARRAY_ENABLED;
const int GL_VERTEX_ATTRIB_ARRAY_SIZE;
const int GL_VERTEX_ATTRIB_ARRAY_STRIDE;
const int GL_VERTEX_ATTRIB_ARRAY_TYPE;
const int GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
const int GL_VERTEX_ATTRIB_ARRAY_POINTER;
const int GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;

/* Read Format */
const int GL_IMPLEMENTATION_COLOR_READ_TYPE;
const int GL_IMPLEMENTATION_COLOR_READ_FORMAT;

/* Shader Source */
const int GL_COMPILE_STATUS;
const int GL_INFO_LOG_LENGTH;
const int GL_SHADER_SOURCE_LENGTH;
const int GL_SHADER_COMPILER;

/* Shader Binary */
const int GL_SHADER_BINARY_FORMATS;
const int GL_NUM_SHADER_BINARY_FORMATS;

/* Shader Precision-Specified Types */
const int GL_LOW_FLOAT;
const int GL_MEDIUM_FLOAT;
const int GL_HIGH_FLOAT;
const int GL_LOW_INT;
const int GL_MEDIUM_INT;
const int GL_HIGH_INT;

/* Framebuffer Object. */
const int GL_FRAMEBUFFER;
const int GL_RENDERBUFFER;

const int GL_RGBA4;
const int GL_RGB5_A1;
const int GL_RGB565;
const int GL_DEPTH_COMPONENT16;
const int GL_STENCIL_INDEX8;

const int GL_RENDERBUFFER_WIDTH;
const int GL_RENDERBUFFER_HEIGHT;
const int GL_RENDERBUFFER_INTERNAL_FORMAT;
const int GL_RENDERBUFFER_RED_SIZE;
const int GL_RENDERBUFFER_GREEN_SIZE;
const int GL_RENDERBUFFER_BLUE_SIZE;
const int GL_RENDERBUFFER_ALPHA_SIZE;
const int GL_RENDERBUFFER_DEPTH_SIZE;
const int GL_RENDERBUFFER_STENCIL_SIZE;

const int GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
const int GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
const int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
const int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;

const int GL_COLOR_ATTACHMENT0;
const int GL_DEPTH_ATTACHMENT;
const int GL_STENCIL_ATTACHMENT;

const int GL_NONE;

const int GL_FRAMEBUFFER_COMPLETE;
const int GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT;
const int GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT;
const int GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS;
const int GL_FRAMEBUFFER_UNSUPPORTED;

const int GL_FRAMEBUFFER_BINDING;
const int GL_RENDERBUFFER_BINDING;
const int GL_MAX_RENDERBUFFER_SIZE;

const int GL_INVALID_FRAMEBUFFER_OPERATION;

/*-------------------------------------------------------------------------
 * GL core functions.
 *-----------------------------------------------------------------------*/

void glActiveTexture(GLenum texture);
%MethodCode
    glActiveTexture(texture);
    sipIsErr = gles2_error_check();
%End

void glAttachShader(GLuint program, GLuint shader);
%MethodCode
    glAttachShader(program, shader);
    sipIsErr = gles2_error_check();
%End

void glBindAttribLocation(GLuint program, GLuint index, const GLchar* name);
%MethodCode
    glBindAttribLocation(program, index, name);
    sipIsErr = gles2_error_check();
%End

void glBindBuffer(GLenum target, GLuint buffer);
%MethodCode
    glBindBuffer(target, buffer);
    sipIsErr = gles2_error_check();
%End

void glBindFramebuffer(GLenum target, GLuint framebuffer);
%MethodCode
    glBindFramebuffer(target, framebuffer);
    sipIsErr = gles2_error_check();
%End

void glBindRenderbuffer(GLenum target, GLuint renderbuffer);
%MethodCode
    glBindRenderbuffer(target, renderbuffer);
    sipIsErr = gles2_error_check();
%End

void glBindTexture(GLenum target, GLuint texture);
%MethodCode
    glBindTexture(target, texture);
    sipIsErr = gles2_error_check();
%End

void glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);

void glBlendEquation(GLenum mode);
%MethodCode
    glBlendEquation(mode);
    sipIsErr = gles2_error_check();
%End

void glBlendEquationSeparate(GLenum modeRGB, GLenum modeAlpha);
%MethodCode
    glBlendEquationSeparate(modeRGB, modeAlpha);
    sipIsErr = gles2_error_check();
%End

void glBlendFunc(GLenum sfactor, GLenum dfactor);
%MethodCode
    glBlendFunc(sfactor, dfactor);
    sipIsErr = gles2_error_check();
%End

void glBlendFuncSeparate(GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
%MethodCode
    glBlendFuncSeparate(srcRGB, dstRGB, srcAlpha, dstAlpha);
    sipIsErr = gles2_error_check();
%End

void glBufferData(GLenum target, GLsizeiptr size, const GLvoid* data, GLenum usage);
%MethodCode
    glBufferData(target, size, data, usage);
    sipIsErr = gles2_error_check();
%End

void glBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, const GLvoid* data);
%MethodCode
    glBufferSubData(target, offset, size, data);
    sipIsErr = gles2_error_check();
%End

GLenum glCheckFramebufferStatus(GLenum target);
%MethodCode
    sipRes = glCheckFramebufferStatus(target);
    sipIsErr = gles2_error_check();
%End

void glClear(GLbitfield mask);
%MethodCode
    glClear(mask);
    sipIsErr = gles2_error_check();
%End

void glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
void glClearDepthf(GLclampf depth);
void glClearStencil(GLint s);
void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);

void glCompileShader(GLuint shader);
%MethodCode
    glCompileShader(shader);
    sipIsErr = gles2_error_check();
%End

void glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid* data);
%MethodCode
    glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data);
    sipIsErr = gles2_error_check();
%End

void glCompressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid* data);
%MethodCode
    glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data);
    sipIsErr = gles2_error_check();
%End

void glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
%MethodCode
    glCopyTexImage2D(target, level, internalformat, x, y, width, height, border);
    sipIsErr = gles2_error_check();
%End

void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
%MethodCode
    glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
    sipIsErr = gles2_error_check();
%End

GLuint glCreateProgram(void);
%MethodCode
    sipRes = glCreateProgram();
    sipIsErr = gles2_error_check();
%End

GLuint glCreateShader(GLenum type);
%MethodCode
    sipRes = glCreateShader(type);
    sipIsErr = gles2_error_check();
%End

void glCullFace(GLenum mode);
%MethodCode
    glCullFace(mode);
    sipIsErr = gles2_error_check();
%End

void glDeleteBuffers(SIP_PYLIST buffers /DocType="list-of-int"/);
%MethodCode
    GLuint *array;

    if ((array = gles2_as_GLuint_array(buffers)) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glDeleteBuffers(PyList_GET_SIZE(buffers), array);
        sipIsErr = gles2_error_check();
        sipFree(array);
    }
%End

void glDeleteFramebuffers(SIP_PYLIST framebuffers /DocType="list-of-int"/);
%MethodCode
    GLuint *array;

    if ((array = gles2_as_GLuint_array(framebuffers)) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glDeleteFramebuffers(PyList_GET_SIZE(framebuffers), array);
        sipIsErr = gles2_error_check();
        sipFree(array);
    }
%End

void glDeleteProgram(GLuint program);
%MethodCode
    glDeleteProgram(program);
    sipIsErr = gles2_error_check();
%End

void glDeleteRenderbuffers(SIP_PYLIST renderbuffers /DocType="list-of-int"/);
%MethodCode
    GLuint *array;

    if ((array = gles2_as_GLuint_array(renderbuffers)) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glDeleteRenderbuffers(PyList_GET_SIZE(renderbuffers), array);
        sipIsErr = gles2_error_check();
        sipFree(array);
    }
%End

void glDeleteShader(GLuint shader);
%MethodCode
    glDeleteShader(shader);
    sipIsErr = gles2_error_check();
%End

void glDeleteTextures(SIP_PYLIST textures /DocType="list-of-int"/);
%MethodCode
    GLuint *array;

    if ((array = gles2_as_GLuint_array(textures)) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glDeleteTextures(PyList_GET_SIZE(textures), array);
        sipIsErr = gles2_error_check();
        sipFree(array);
    }
%End

void glDepthFunc(GLenum func);
%MethodCode
    glDepthFunc(func);
    sipIsErr = gles2_error_check();
%End

void glDepthMask(GLboolean flag);
void glDepthRangef(GLclampf zNear, GLclampf zFar);

void glDetachShader(GLuint program, GLuint shader);
%MethodCode
    glDetachShader(program, shader);
    sipIsErr = gles2_error_check();
%End

void glDisable(GLenum cap);
%MethodCode
    glDisable(cap);
    sipIsErr = gles2_error_check();
%End

void glDisableVertexAttribArray(GLuint index);
%MethodCode
    glDisableVertexAttribArray(index);
    sipIsErr = gles2_error_check();
%End

void glDrawArrays(GLenum mode, GLint first, GLsizei count);
%MethodCode
    glDrawArrays(mode, first, count);
    sipIsErr = gles2_error_check();
%End

void glDrawElements(GLenum mode, GLsizei count, GLenum type, const GLvoid *indices);
%MethodCode
    glDrawElements(mode, count, type, indices);
    sipIsErr = gles2_error_check();
%End

void glEnable(GLenum cap);
%MethodCode
    glEnable(cap);
    sipIsErr = gles2_error_check();
%End

void glEnableVertexAttribArray(GLuint index);
%MethodCode
    glEnableVertexAttribArray(index);
    sipIsErr = gles2_error_check();
%End

void glFinish(void) /ReleaseGIL/;
void glFlush(void);

void glFramebufferRenderbuffer(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
%MethodCode
    glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer);
    sipIsErr = gles2_error_check();
%End

void glFramebufferTexture2D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
%MethodCode
    glFramebufferTexture2D(target, attachment, textarget, texture, level);
    sipIsErr = gles2_error_check();
%End

void glFrontFace(GLenum mode);
%MethodCode
    glFrontFace(mode);
    sipIsErr = gles2_error_check();
%End

SIP_PYLIST glGenBuffers(GLsizei n) /DocType="list-of-int"/;
%MethodCode
    GLuint *buffers;

    if ((buffers = sipMalloc(n * sizeof (GLuint))) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glGenBuffers(n, buffers);
        sipIsErr = gles2_error_check();

        if (!sipIsErr)
        {
            if ((sipRes = gles2_from_GLuint_array(n, buffers)) == NULL)
                sipIsErr = 1;
        }

        sipFree(buffers);
    }
%End

void glGenerateMipmap(GLenum target);
%MethodCode
    glGenerateMipmap(target);
    sipIsErr = gles2_error_check();
%End

SIP_PYLIST glGenFramebuffers(GLsizei n) /DocType="list-of-int"/;
%MethodCode
    GLuint *buffers;

    if ((buffers = sipMalloc(n * sizeof (GLuint))) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glGenFramebuffers(n, buffers);
        sipIsErr = gles2_error_check();

        if (!sipIsErr)
        {
            if ((sipRes = gles2_from_GLuint_array(n, buffers)) == NULL)
                sipIsErr = 1;
        }

        sipFree(buffers);
    }
%End

SIP_PYLIST glGenRenderbuffers(GLsizei n) /DocType="list-of-int"/;
%MethodCode
    GLuint *buffers;

    if ((buffers = sipMalloc(n * sizeof (GLuint))) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glGenRenderbuffers(n, buffers);
        sipIsErr = gles2_error_check();

        if (!sipIsErr)
        {
            if ((sipRes = gles2_from_GLuint_array(n, buffers)) == NULL)
                sipIsErr = 1;
        }

        sipFree(buffers);
    }
%End

SIP_PYLIST glGenTextures(GLsizei n) /DocType="list-of-int"/;
%MethodCode
    GLuint *textures;

    if ((textures = sipMalloc(n * sizeof (GLuint))) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glGenTextures(n, textures);
        sipIsErr = gles2_error_check();

        if (!sipIsErr)
        {
            if ((sipRes = gles2_from_GLuint_array(n, textures)) == NULL)
                sipIsErr = 1;
        }

        sipFree(textures);
    }
%End

SIP_PYOBJECT glGetActiveAttrib(GLuint program, GLuint index) /DocType="str, int, int"/;
%MethodCode
    GLint bufsize;

    glGetProgramiv(program, GL_ACTIVE_ATTRIBUTE_MAX_LENGTH, &bufsize);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        GLchar *name;

        if ((name = sipMalloc(bufsize * sizeof (GLchar))) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            GLint size;
            GLenum type;

            glGetActiveAttrib(program, index, bufsize, NULL, &size, &type, name);
            sipIsErr = gles2_error_check();

            if (!sipIsErr)
            {
                if ((sipRes = Py_BuildValue("siI", name, size, type)) == NULL)
                    sipIsErr = 1;
            }

            sipFree(name);
        }
    }
%End

SIP_PYOBJECT glGetActiveUniform(GLuint program, GLuint index) /DocType="str, int, int"/;
%MethodCode
    GLint bufsize;

    glGetProgramiv(program, GL_ACTIVE_UNIFORM_MAX_LENGTH, &bufsize);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        GLchar *name;

        if ((name = sipMalloc(bufsize * sizeof (GLchar))) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            GLint size;
            GLenum type;

            glGetActiveUniform(program, index, bufsize, NULL, &size, &type, name);
            sipIsErr = gles2_error_check();

            if (!sipIsErr)
            {
                if ((sipRes = Py_BuildValue("siI", name, size, type)) == NULL)
                    sipIsErr = 1;
            }

            sipFree(name);
        }
    }
%End

SIP_PYLIST glGetAttachedShaders(GLuint program) /DocType="list-of-int"/;
%MethodCode
    GLint nr_shaders;

    glGetProgramiv(program, GL_ATTACHED_SHADERS, &nr_shaders);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        GLuint *shaders;

        if ((shaders = sipMalloc(nr_shaders * sizeof (GLuint))) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glGetAttachedShaders(program, nr_shaders, NULL, shaders);
            sipIsErr = gles2_error_check();

            if (!sipIsErr)
            {
                if ((sipRes = gles2_from_GLuint_array(nr_shaders, shaders)) == NULL)
                    sipIsErr = 1;
            }

            sipFree(shaders);
        }
    }
%End

GLint glGetAttribLocation(GLuint program, const GLchar* name);
%MethodCode
    sipRes = glGetAttribLocation(program, name);
    sipIsErr = gles2_error_check();
%End

SIP_PYOBJECT glGetBooleanv(GLenum pname) /DocType="bool, ..."/;
%MethodCode
    GLboolean fixed_params[4], *params;
    GLint nr_params;
    GLenum query;

    switch (pname)
    {
    case GL_COMPRESSED_TEXTURE_FORMATS:
        nr_params = 0;
        query = GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        break;

    case GL_SHADER_BINARY_FORMATS:
        nr_params = 0;
        query = GL_NUM_SHADER_BINARY_FORMATS;
        break;

    case GL_BLEND_COLOR:
    case GL_COLOR_CLEAR_VALUE:
    case GL_COLOR_WRITEMASK:
    case GL_SCISSOR_BOX:
    case GL_VIEWPORT:
        nr_params = 4;
        break;

    case GL_ALIASED_LINE_WIDTH_RANGE:
    case GL_ALIASED_POINT_SIZE_RANGE:
    case GL_DEPTH_RANGE:
    case GL_MAX_VIEWPORT_DIMS:
        nr_params = 2;
        break;

    default:
        nr_params = 1;
    }

    if (nr_params == 0)
    {
        glGetIntegerv(query, &nr_params);

        if ((params = sipMalloc(nr_params * sizeof (GLboolean))) == NULL)
            sipIsErr = 1;
    }
    else
    {
        params = fixed_params;
    }

    if (params != NULL)
    {
        glGetBooleanv(pname, params);
        sipIsErr = gles2_error_check();

        if (!sipIsErr)
        {
            if ((sipRes = PyTuple_New(nr_params)) == NULL)
            {
                sipIsErr = 1;
            }
            else
            {
                GLint i;

                for (i = 0; i < nr_params; ++i)
                {
                    PyObject *param;

                    if ((param = PyBool_FromLong(params[i])) == NULL)
                    {
                        Py_DECREF(sipRes);
                        sipIsErr = 1;
                        break;
                    }

                    PyTuple_SET_ITEM(sipRes, i, param);
                }
            }
        }

        if (params != fixed_params)
            sipFree(params);
    }
%End

SIP_PYOBJECT glGetBufferParameteriv(GLenum target, GLenum pname) /DocType="int, ..."/;
%MethodCode
    GLint data[1];

    glGetBufferParameteriv(target, pname, data);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        if ((sipRes = PyTuple_New(1)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            PyObject *param;

            if ((param = SIPLong_FromLong(data[0])) == NULL)
            {
                Py_DECREF(sipRes);
                sipIsErr = 1;
            }
            else
            {
                PyTuple_SET_ITEM(sipRes, 0, param);
            }
        }
    }
%End

GLenum glGetError(void);
%MethodCode
    if (gles2_pending_error < 0)
    {
        sipRes = glGetError();
    }
    else
    {
        sipRes = gles2_pending_error;
        gles2_pending_error = -1;
    }
%End

SIP_PYOBJECT glGetFloatv(GLenum pname) /DocType="float, ..."/;
%MethodCode
    GLfloat fixed_params[4], *params;
    GLint nr_params;
    GLenum query;

    switch (pname)
    {
    case GL_COMPRESSED_TEXTURE_FORMATS:
        nr_params = 0;
        query = GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        break;

    case GL_SHADER_BINARY_FORMATS:
        nr_params = 0;
        query = GL_NUM_SHADER_BINARY_FORMATS;
        break;

    case GL_BLEND_COLOR:
    case GL_COLOR_CLEAR_VALUE:
    case GL_COLOR_WRITEMASK:
    case GL_SCISSOR_BOX:
    case GL_VIEWPORT:
        nr_params = 4;
        break;

    case GL_ALIASED_LINE_WIDTH_RANGE:
    case GL_ALIASED_POINT_SIZE_RANGE:
    case GL_DEPTH_RANGE:
    case GL_MAX_VIEWPORT_DIMS:
        nr_params = 2;
        break;

    default:
        nr_params = 1;
    }

    if (nr_params == 0)
    {
        glGetIntegerv(query, &nr_params);

        if ((params = sipMalloc(nr_params * sizeof (GLfloat))) == NULL)
            sipIsErr = 1;
    }
    else
    {
        params = fixed_params;
    }

    if (params != NULL)
    {
        glGetFloatv(pname, params);
        sipIsErr = gles2_error_check();

        if (!sipIsErr)
        {
            if ((sipRes = PyTuple_New(nr_params)) == NULL)
            {
                sipIsErr = 1;
            }
            else
            {
                GLint i;

                for (i = 0; i < nr_params; ++i)
                {
                    PyObject *param;

                    if ((param = PyFloat_FromDouble(params[i])) == NULL)
                    {
                        Py_DECREF(sipRes);
                        sipIsErr = 1;
                        break;
                    }

                    PyTuple_SET_ITEM(sipRes, i, param);
                }
            }
        }

        if (params != fixed_params)
            sipFree(params);
    }
%End

SIP_PYOBJECT glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname) /DocType="int, ..."/;
%MethodCode
    GLint params[1];

    glGetFramebufferAttachmentParameteriv(target, attachment, pname, params);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        if ((sipRes = PyTuple_New(1)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            PyObject *param;

            if ((param = SIPLong_FromLong(params[0])) == NULL)
            {
                Py_DECREF(sipRes);
                sipIsErr = 1;
            }
            else
            {
                PyTuple_SET_ITEM(sipRes, 0, param);
            }
        }
    }
%End

SIP_PYOBJECT glGetIntegerv(GLenum pname) /DocType="int, ..."/;
%MethodCode
    GLint fixed_params[4], *params;
    GLint nr_params;
    GLenum query;

    switch (pname)
    {
    case GL_COMPRESSED_TEXTURE_FORMATS:
        nr_params = 0;
        query = GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        break;

    case GL_SHADER_BINARY_FORMATS:
        nr_params = 0;
        query = GL_NUM_SHADER_BINARY_FORMATS;
        break;

    case GL_BLEND_COLOR:
    case GL_COLOR_CLEAR_VALUE:
    case GL_COLOR_WRITEMASK:
    case GL_SCISSOR_BOX:
    case GL_VIEWPORT:
        nr_params = 4;
        break;

    case GL_ALIASED_LINE_WIDTH_RANGE:
    case GL_ALIASED_POINT_SIZE_RANGE:
    case GL_DEPTH_RANGE:
    case GL_MAX_VIEWPORT_DIMS:
        nr_params = 2;
        break;

    default:
        nr_params = 1;
    }

    if (nr_params == 0)
    {
        glGetIntegerv(query, &nr_params);

        if ((params = sipMalloc(nr_params * sizeof (GLint))) == NULL)
            sipIsErr = 1;
    }
    else
    {
        params = fixed_params;
    }

    if (params != NULL)
    {
        glGetIntegerv(pname, params);
        sipIsErr = gles2_error_check();

        if (!sipIsErr)
        {
            if ((sipRes = PyTuple_New(nr_params)) == NULL)
            {
                sipIsErr = 1;
            }
            else
            {
                GLint i;

                for (i = 0; i < nr_params; ++i)
                {
                    PyObject *param;

                    if ((param = SIPLong_FromLong(params[i])) == NULL)
                    {
                        Py_DECREF(sipRes);
                        sipIsErr = 1;
                        break;
                    }

                    PyTuple_SET_ITEM(sipRes, i, param);
                }
            }
        }

        if (params != fixed_params)
            sipFree(params);
    }
%End

SIP_PYOBJECT glGetProgramiv(GLuint program, GLenum pname) /DocType="int, ..."/;
%MethodCode
    GLint params[1];

    glGetProgramiv(program, pname, params);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        if ((sipRes = PyTuple_New(1)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            PyObject *param;

            if ((param = SIPLong_FromLong(params[0])) == NULL)
            {
                Py_DECREF(sipRes);
                sipIsErr = 1;
            }
            else
            {
                PyTuple_SET_ITEM(sipRes, 0, param);
            }
        }
    }
%End

SIP_PYOBJECT glGetProgramInfoLog(GLuint program) /DocType="Py_v3:bytes;str"/;
%MethodCode
    GLint bufsize;

    glGetProgramiv(program, GL_INFO_LOG_LENGTH, &bufsize);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        GLchar *infolog;

        if ((infolog = sipMalloc(bufsize * sizeof (GLchar))) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glGetProgramInfoLog(program, bufsize, NULL, infolog);
            sipIsErr = gles2_error_check();

            if (!sipIsErr)
                sipRes = SIPBytes_FromString(infolog);

            sipFree(infolog);
        }
    }
%End

SIP_PYOBJECT glGetRenderbufferParameteriv(GLenum target, GLenum pname) /DocType="int, ..."/;
%MethodCode
    GLint params[1];

    glGetRenderbufferParameteriv(target, pname, params);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        if ((sipRes = PyTuple_New(1)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            PyObject *param;

            if ((param = SIPLong_FromLong(params[0])) == NULL)
            {
                Py_DECREF(sipRes);
                sipIsErr = 1;
            }
            else
            {
                PyTuple_SET_ITEM(sipRes, 0, param);
            }
        }
    }
%End

SIP_PYOBJECT glGetShaderiv(GLuint shader, GLenum pname) /DocType="int, ..."/;
%MethodCode
    GLint params[1];

    glGetShaderiv(shader, pname, params);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        if ((sipRes = PyTuple_New(1)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            PyObject *param;

            if ((param = SIPLong_FromLong(params[0])) == NULL)
            {
                Py_DECREF(sipRes);
                sipIsErr = 1;
            }
            else
            {
                PyTuple_SET_ITEM(sipRes, 0, param);
            }
        }
    }
%End

SIP_PYOBJECT glGetShaderInfoLog(GLuint shader) /DocType="Py_v3:bytes;str"/;
%MethodCode
    GLint bufsize;

    glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &bufsize);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        GLchar *infolog;

        if ((infolog = sipMalloc(bufsize * sizeof (GLchar))) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glGetShaderInfoLog(shader, bufsize, NULL, infolog);
            sipIsErr = gles2_error_check();

            if (!sipIsErr)
                sipRes = SIPBytes_FromString(infolog);

            sipFree(infolog);
        }
    }
%End

SIP_PYOBJECT glGetShaderPrecisionFormat(GLenum shadertype, GLenum precisiontype) /DocType="(int, int), int"/;
%MethodCode
    GLint range[2], precision;

    glGetShaderPrecisionFormat(shadertype, precisiontype, range, &precision);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        if ((sipRes = Py_BuildValue("(ii)i", range[0], range[1], precision)) == NULL)
            sipIsErr = 1;
    }
%End

SIP_PYOBJECT glGetShaderSource(GLuint shader) /DocType="Py_v3:bytes;str"/;
%MethodCode
    GLint bufsize;

    glGetShaderiv(shader, GL_SHADER_SOURCE_LENGTH, &bufsize);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        GLchar *source;

        if ((source = sipMalloc(bufsize * sizeof (GLchar))) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glGetShaderSource(shader, bufsize, NULL, source);
            sipIsErr = gles2_error_check();

            if (!sipIsErr)
                sipRes = SIPBytes_FromString(source);

            sipFree(source);
        }
    }
%End

// Suppress a warning message by using GLchar rather than GLubyte.
const GLchar *glGetString(GLenum name);
%MethodCode
    sipRes = (const char *)glGetString(name);
    sipIsErr = gles2_error_check();
%End

SIP_PYOBJECT glGetTexParameterfv(GLenum target, GLenum pname) /DocType="float, ..."/;
%MethodCode
    GLfloat params[1];

    glGetTexParameterfv(target, pname, params);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        if ((sipRes = PyTuple_New(1)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            PyObject *param;

            if ((param = PyFloat_FromDouble(params[0])) == NULL)
            {
                Py_DECREF(sipRes);
                sipIsErr = 1;
            }
            else
            {
                PyTuple_SET_ITEM(sipRes, 0, param);
            }
        }
    }
%End

SIP_PYOBJECT glGetTexParameteriv(GLenum target, GLenum pname) /DocType="int, ..."/;
%MethodCode
    GLint params[1];

    glGetTexParameteriv(target, pname, params);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        if ((sipRes = PyTuple_New(1)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            PyObject *param;

            if ((param = SIPLong_FromLong(params[0])) == NULL)
            {
                Py_DECREF(sipRes);
                sipIsErr = 1;
            }
            else
            {
                PyTuple_SET_ITEM(sipRes, 0, param);
            }
        }
    }
%End

%ModuleCode
#include <float.h>
#include <limits.h>

#define POGLES_GLES2_MAX_UNIFORM    100
#define POGLES_GLES2_FLOAT_MARKER   (FLT_MAX - 51.0)
#define POGLES_GLES2_INT_MARKER     (INT_MAX - 51)
%End

SIP_PYOBJECT glGetUniformfv(GLuint program, GLint location) /DocType="float, ..."/;
%MethodCode
    GLfloat params[POGLES_GLES2_MAX_UNIFORM];
    int i;

    /*
     * We don't understand what the maximum number of values returned might be
     * (particularly for GL_SAMPLER_2D and GL_SAMPLER_CUBE).  Therefore we
     * initialise the buffer with marker values and hope it's big enough and
     * that the marker doesn't clash with the last value returned.  (It also
     * has the advantage of not needing the introspect the value's meta-data.)
     * Hopefully somebody will tell us how to do this properly.
     */
    for (i = 0; i < POGLES_GLES2_MAX_UNIFORM; ++i)
        params[i] = POGLES_GLES2_FLOAT_MARKER;

    glGetUniformfv(program, location, params);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        int nr_values;

        /* Work out how many values were returned. */
        for (nr_values = POGLES_GLES2_MAX_UNIFORM; nr_values > 0; ++nr_values)
            if (params[nr_values - 1] != POGLES_GLES2_FLOAT_MARKER)
                break;

        /*
         * If every marker was overwritten then assume the buffer wasn't big
         * enough and complain loudly so that somebody can help to do it
         * properly.
         */
        if (nr_values == POGLES_GLES2_MAX_UNIFORM)
            Py_FatalError("Unexpected result from pogles.gles2.glGetUniformfv(), please report the problem");

        if ((sipRes = PyTuple_New(nr_values)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            for (i = 0; i < nr_values; ++i)
            {
                PyObject *val;

                if ((val = PyFloat_FromDouble(params[i])) == NULL)
                {
                    Py_DECREF(sipRes);
                    sipIsErr = 1;
                    break;
                }

                PyTuple_SET_ITEM(sipRes, i, val);
            }
        }
    }
%End

SIP_PYOBJECT glGetUniformiv(GLuint program, GLint location) /DocType="int, ..."/;
%MethodCode
    GLint params[POGLES_GLES2_MAX_UNIFORM];
    int i;

    /*
     * We don't understand what the maximum number of values returned might be
     * (particularly for GL_SAMPLER_2D and GL_SAMPLER_CUBE).  Therefore we
     * initialise the buffer with marker values and hope it's big enough and
     * that the marker doesn't clash with the last value returned.  (It also
     * has the advantage of not needing the introspect the value's meta-data.)
     * Hopefully somebody will tell us how to do this properly.
     */
    for (i = 0; i < POGLES_GLES2_MAX_UNIFORM; ++i)
        params[i] = POGLES_GLES2_INT_MARKER;

    glGetUniformiv(program, location, params);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        int nr_values;

        /* Work out how many values were returned. */
        for (nr_values = POGLES_GLES2_MAX_UNIFORM; nr_values > 0; ++nr_values)
            if (params[nr_values - 1] != POGLES_GLES2_INT_MARKER)
                break;

        /*
         * If every marker was overwritten then assume the buffer wasn't big
         * enough and complain loudly so that somebody can help to do it
         * properly.
         */
        if (nr_values == POGLES_GLES2_MAX_UNIFORM)
            Py_FatalError("Unexpected result from pogles.gles2.glGetUniformiv(), please report the problem");

        if ((sipRes = PyTuple_New(nr_values)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            for (i = 0; i < nr_values; ++i)
            {
                PyObject *val;

                if ((val = SIPLong_FromLong(params[i])) == NULL)
                {
                    Py_DECREF(sipRes);
                    sipIsErr = 1;
                    break;
                }

                PyTuple_SET_ITEM(sipRes, i, val);
            }
        }
    }
%End

GLint glGetUniformLocation(GLuint program, const GLchar *name);
%MethodCode
    sipRes = glGetUniformLocation(program, name);
    sipIsErr = gles2_error_check();
%End

SIP_PYOBJECT glGetVertexAttribfv(GLuint index, GLenum pname) /DocType="float, ..."/;
%MethodCode
    GLfloat params[4];

    glGetVertexAttribfv(index, pname, params);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        int nr_values = (pname == GL_CURRENT_VERTEX_ATTRIB ? 4 : 1);

        if ((sipRes = PyTuple_New(nr_values)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            int i;

            for (i = 0; i < nr_values; ++i)
            {
                PyObject *val;

                if ((val = PyFloat_FromDouble(params[i])) == NULL)
                {
                    Py_DECREF(sipRes);
                    sipIsErr = 1;
                    break;
                }

                PyTuple_SET_ITEM(sipRes, i, val);
            }
        }
    }
%End

SIP_PYOBJECT glGetVertexAttribiv(GLuint index, GLenum pname) /DocType="int, ..."/;
%MethodCode
    GLint params[4];

    glGetVertexAttribiv(index, pname, params);
    sipIsErr = gles2_error_check();

    if (!sipIsErr)
    {
        int nr_values = (pname == GL_CURRENT_VERTEX_ATTRIB ? 4 : 1);

        if ((sipRes = PyTuple_New(nr_values)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            int i;

            for (i = 0; i < nr_values; ++i)
            {
                PyObject *val;

                if ((val = SIPLong_FromLong(params[i])) == NULL)
                {
                    Py_DECREF(sipRes);
                    sipIsErr = 1;
                    break;
                }

                PyTuple_SET_ITEM(sipRes, i, val);
            }
        }
    }
%End

void glGetVertexAttribPointerv(GLuint index, GLenum pname, GLvoid **pointer);
%MethodCode
    glGetVertexAttribPointerv(index, pname, &pointer);
    sipIsErr = gles2_error_check();
%End

void glHint(GLenum target, GLenum mode);
%MethodCode
    glHint(target, mode);
    sipIsErr = gles2_error_check();
%End

GLboolean glIsBuffer(GLuint buffer);

GLboolean glIsEnabled(GLenum cap);
%MethodCode
    sipRes = glIsEnabled(cap);
    sipIsErr = gles2_error_check();
%End

GLboolean glIsFramebuffer(GLuint framebuffer);
GLboolean glIsProgram(GLuint program);
GLboolean glIsRenderbuffer(GLuint renderbuffer);
GLboolean glIsShader(GLuint shader);
GLboolean glIsTexture(GLuint texture);

void glLineWidth(GLfloat width);
%MethodCode
    glLineWidth(width);
    sipIsErr = gles2_error_check();
%End

void glLinkProgram(GLuint program);
%MethodCode
    glLinkProgram(program);
    sipIsErr = gles2_error_check();
%End

void glPixelStorei(GLenum pname, GLint param);
%MethodCode
    glPixelStorei(pname, param);
    sipIsErr = gles2_error_check();
%End

void glPolygonOffset(GLfloat factor, GLfloat units);

SIP_PYOBJECT glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type) /DocType="Py_v3:bytes;str"/;
%MethodCode
    unsigned bytes_per_pixel;
    SIP_SSIZE_T nr_bytes;

    if (type == GL_UNSIGNED_BYTE)
    {
        switch (format)
        {
        case GL_RGBA:
            bytes_per_pixel = 4;
            break;

        case GL_RGB:
            bytes_per_pixel = 3;
            break;

        case GL_LUMINANCE_ALPHA:
            bytes_per_pixel = 2;
            break;

        default:
            bytes_per_pixel = 1;
        }
    }
    else if (type == GL_HALF_FLOAT_OES)
    {
        switch (format)
        {
        case GL_RGBA:
            bytes_per_pixel = 8;
            break;

        case GL_RGB:
            bytes_per_pixel = 6;
            break;

        case GL_LUMINANCE_ALPHA:
            bytes_per_pixel = 4;
            break;

        default:
            bytes_per_pixel = 2;
        }
    }
    else
    {
        bytes_per_pixel = 2;
    }

    nr_bytes = width * height * bytes_per_pixel;

    if ((sipRes = SIPBytes_FromStringAndSize(NULL, nr_bytes)) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glReadPixels(x, y, width, height, format, type, SIPBytes_AS_STRING(sipRes));
        sipIsErr = gles2_error_check();

        if (sipIsErr)
        {
            Py_DECREF(sipRes);
            sipRes = NULL;
        }
    }
%End

void glReleaseShaderCompiler(void);
%MethodCode
    glReleaseShaderCompiler();
    sipIsErr = gles2_error_check();
%End

void glRenderbufferStorage(GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
%MethodCode
    glRenderbufferStorage(target, internalformat, width, height);
    sipIsErr = gles2_error_check();
%End

void glSampleCoverage(GLclampf value, GLboolean invert);

void glScissor(GLint x, GLint y, GLsizei width, GLsizei height);
%MethodCode
    glScissor(x, y, width, height);
    sipIsErr = gles2_error_check();
%End

void glShaderBinary(SIP_PYLIST shaders /DocType="list-of-int"/, GLenum binaryformat, const GLvoid* binary, GLsizei length);
%MethodCode
    GLuint *array;
    
    if ((array = gles2_as_GLuint_array(shaders)) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glShaderBinary(PyList_GET_SIZE(shaders), array, binaryformat, binary, length);
        sipIsErr = gles2_error_check();

        sipFree(array);
    }
%End

/* This is provided as a convenience. */
void glShaderSource(GLuint shader, const char *string);
%MethodCode
    glShaderSource(shader, 1, &string, NULL);
    sipIsErr = gles2_error_check();
%End

void glShaderSource(GLuint shader, SIP_PYLIST string /DocType="list-of-str"/);
%MethodCode
    const GLchar **array;
    PyObject *owners;
    
    if ((array = gles2_as_GLstr_array(string, &owners)) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glShaderSource(shader, PyList_GET_SIZE(string), array, NULL);
        sipIsErr = gles2_error_check();

        sipFree(array);
        Py_DECREF(owners);
    }
%End

void glStencilFunc(GLenum func, GLint ref, GLuint mask);
%MethodCode
    glStencilFunc(func, ref, mask);
    sipIsErr = gles2_error_check();
%End

void glStencilFuncSeparate(GLenum face, GLenum func, GLint ref, GLuint mask);
%MethodCode
    glStencilFuncSeparate(face, func, ref, mask);
    sipIsErr = gles2_error_check();
%End

void glStencilMask(GLuint mask);

void glStencilMaskSeparate(GLenum face, GLuint mask);
%MethodCode
    glStencilMaskSeparate(face, mask);
    sipIsErr = gles2_error_check();
%End

void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass);
%MethodCode
    glStencilOp(fail, zfail, zpass);
    sipIsErr = gles2_error_check();
%End

void glStencilOpSeparate(GLenum face, GLenum fail, GLenum zfail, GLenum zpass);
%MethodCode
    glStencilOpSeparate(face, fail, zfail, zpass);
    sipIsErr = gles2_error_check();
%End

void glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
%MethodCode
    glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
    sipIsErr = gles2_error_check();
%End

void glTexParameterf(GLenum target, GLenum pname, GLfloat param);
%MethodCode
    glTexParameterf(target, pname, param);
    sipIsErr = gles2_error_check();
%End

/*
 * Not implemented because all parameters are single values so
 * glTexParameterf() would be used instead.
 */
//void glTexParameterfv(GLenum target, GLenum pname, const GLfloat *params);

void glTexParameteri(GLenum target, GLenum pname, GLint param);
%MethodCode
    glTexParameteri(target, pname, param);
    sipIsErr = gles2_error_check();
%End

/*
 * Not implemented because all parameters are single values so
 * glTexParameteri() would be used instead.
 */
//void glTexParameteriv(GLenum target, GLenum pname, const GLint *params);

void glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels);
%MethodCode
    glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
    sipIsErr = gles2_error_check();
%End

void glUniform1f(GLint location, GLfloat x);
%MethodCode
    glUniform1f(location, x);
    sipIsErr = gles2_error_check();
%End

void glUniform1fv(GLint location, SIP_PYLIST v /DocType="list-of-float"/);
%MethodCode
    GLfloat *array;

    if ((array = gles2_as_GLfloat_array(v)) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glUniform1fv(location, PyList_GET_SIZE(v), array);
        sipIsErr = gles2_error_check();
        sipFree(array);
    }
%End

void glUniform1i(GLint location, GLint x);
%MethodCode
    glUniform1i(location, x);
    sipIsErr = gles2_error_check();
%End

void glUniform1iv(GLint location, SIP_PYLIST v /DocType="list-of-int"/);
%MethodCode
    GLint *array;

    if ((array = gles2_as_GLint_array(v)) == NULL)
    {
        sipIsErr = 1;
    }
    else
    {
        glUniform1iv(location, PyList_GET_SIZE(v), array);
        sipIsErr = gles2_error_check();
        sipFree(array);
    }
%End

void glUniform2f(GLint location, GLfloat x, GLfloat y);
%MethodCode
    glUniform2f(location, x, y);
    sipIsErr = gles2_error_check();
%End

void glUniform2fv(GLint location, SIP_PYLIST v /DocType="list-of-float"/);
%MethodCode
    if (PyList_GET_SIZE(v) % 2 != 0)
    {
        gles2_error("the number of values must be a multiple of 2");
        sipIsErr = 1;
    }
    else
    {
        GLfloat *array;

        if ((array = gles2_as_GLfloat_array(v)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glUniform2fv(location, PyList_GET_SIZE(v) / 2, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glUniform2i(GLint location, GLint x, GLint y);
%MethodCode
    glUniform2i(location, x, y);
    sipIsErr = gles2_error_check();
%End

void glUniform2iv(GLint location, SIP_PYLIST v /DocType="list-of-int"/);
%MethodCode
    if (PyList_GET_SIZE(v) % 2 != 0)
    {
        gles2_error("the number of values must be a multiple of 2");
        sipIsErr = 1;
    }
    else
    {
        GLint *array;

        if ((array = gles2_as_GLint_array(v)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glUniform2iv(location, PyList_GET_SIZE(v) / 2, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glUniform3f(GLint location, GLfloat x, GLfloat y, GLfloat z);
%MethodCode
    glUniform3f(location, x, y, z);
    sipIsErr = gles2_error_check();
%End

void glUniform3fv(GLint location, SIP_PYLIST v /DocType="list-of-float"/);
%MethodCode
    if (PyList_GET_SIZE(v) % 3 != 0)
    {
        gles2_error("the number of values must be a multiple of 3");
        sipIsErr = 1;
    }
    else
    {
        GLfloat *array;

        if ((array = gles2_as_GLfloat_array(v)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glUniform3fv(location, PyList_GET_SIZE(v) / 3, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glUniform3i(GLint location, GLint x, GLint y, GLint z);
%MethodCode
    glUniform3i(location, x, y, z);
    sipIsErr = gles2_error_check();
%End

void glUniform3iv(GLint location, SIP_PYLIST v /DocType="list-of-int"/);
%MethodCode
    if (PyList_GET_SIZE(v) % 3 != 0)
    {
        gles2_error("the number of values must be a multiple of 3");
        sipIsErr = 1;
    }
    else
    {
        GLint *array;

        if ((array = gles2_as_GLint_array(v)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glUniform3iv(location, PyList_GET_SIZE(v) / 3, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glUniform4f(GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
%MethodCode
    glUniform4f(location, x, y, z, w);
    sipIsErr = gles2_error_check();
%End

void glUniform4fv(GLint location, SIP_PYLIST v /DocType="list-of-float"/);
%MethodCode
    if (PyList_GET_SIZE(v) % 4 != 0)
    {
        gles2_error("the number of values must be a multiple of 4");
        sipIsErr = 1;
    }
    else
    {
        GLfloat *array;

        if ((array = gles2_as_GLfloat_array(v)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glUniform4fv(location, PyList_GET_SIZE(v) / 4, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glUniform4i(GLint location, GLint x, GLint y, GLint z, GLint w);
%MethodCode
    glUniform4i(location, x, y, z, w);
    sipIsErr = gles2_error_check();
%End

void glUniform4iv(GLint location, SIP_PYLIST v /DocType="list-of-int"/);
%MethodCode
    if (PyList_GET_SIZE(v) % 4 != 0)
    {
        gles2_error("the number of values must be a multiple of 4");
        sipIsErr = 1;
    }
    else
    {
        GLint *array;

        if ((array = gles2_as_GLint_array(v)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glUniform4iv(location, PyList_GET_SIZE(v) / 4, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glUniformMatrix2fv(GLint location, GLboolean transpose, SIP_PYLIST v /DocType="list-of-float"/);
%MethodCode
    if (PyList_GET_SIZE(v) % 4 != 0)
    {
        gles2_error("the number of values must be a multiple of 4");
        sipIsErr = 1;
    }
    else
    {
        GLfloat *array;

        if ((array = gles2_as_GLfloat_array(v)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glUniformMatrix2fv(location, PyList_GET_SIZE(v) / 4, transpose, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glUniformMatrix3fv(GLint location, GLboolean transpose, SIP_PYLIST v /DocType="list-of-float"/);
%MethodCode
    if (PyList_GET_SIZE(v) % 9 != 0)
    {
        gles2_error("the number of values must be a multiple of 9");
        sipIsErr = 1;
    }
    else
    {
        GLfloat *array;

        if ((array = gles2_as_GLfloat_array(v)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glUniformMatrix3fv(location, PyList_GET_SIZE(v) / 9, transpose, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glUniformMatrix4fv(GLint location, GLboolean transpose, SIP_PYLIST v /DocType="list-of-float"/);
%MethodCode
    if (PyList_GET_SIZE(v) % 16 != 0)
    {
        gles2_error("the number of values must be a multiple of 16");
        sipIsErr = 1;
    }
    else
    {
        GLfloat *array;

        if ((array = gles2_as_GLfloat_array(v)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glUniformMatrix4fv(location, PyList_GET_SIZE(v) / 16, transpose, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glUseProgram(GLuint program);
%MethodCode
    glUseProgram(program);
    sipIsErr = gles2_error_check();
%End

void glValidateProgram(GLuint program);
%MethodCode
    glValidateProgram(program);
    sipIsErr = gles2_error_check();
%End

void glVertexAttrib1f(GLuint indx, GLfloat x);
%MethodCode
    glVertexAttrib1f(indx, x);
    sipIsErr = gles2_error_check();
%End

void glVertexAttrib1fv(GLuint indx, SIP_PYLIST values /DocType="list-of-float"/);
%MethodCode
    if (PyList_GET_SIZE(values) != 1)
    {
        gles2_error("the number of values must be 1");
        sipIsErr = 1;
    }
    else
    {
        GLfloat *array;

        if ((array = gles2_as_GLfloat_array(values)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glVertexAttrib1fv(indx, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glVertexAttrib2f(GLuint indx, GLfloat x, GLfloat y);
%MethodCode
    glVertexAttrib2f(indx, x, y);
    sipIsErr = gles2_error_check();
%End

void glVertexAttrib2fv(GLuint indx, SIP_PYLIST values /DocType="list-of-float"/);
%MethodCode
    if (PyList_GET_SIZE(values) != 2)
    {
        gles2_error("the number of values must be 2");
        sipIsErr = 1;
    }
    else
    {
        GLfloat *array;

        if ((array = gles2_as_GLfloat_array(values)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glVertexAttrib2fv(indx, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glVertexAttrib3f(GLuint indx, GLfloat x, GLfloat y, GLfloat z);
%MethodCode
    glVertexAttrib3f(indx, x, y, z);
    sipIsErr = gles2_error_check();
%End

void glVertexAttrib3fv(GLuint indx, SIP_PYLIST values /DocType="list-of-float"/);
%MethodCode
    if (PyList_GET_SIZE(values) != 3)
    {
        gles2_error("the number of values must be 3");
        sipIsErr = 1;
    }
    else
    {
        GLfloat *array;

        if ((array = gles2_as_GLfloat_array(values)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glVertexAttrib3fv(indx, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glVertexAttrib4f(GLuint indx, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
%MethodCode
    glVertexAttrib4f(indx, x, y, z, w);
    sipIsErr = gles2_error_check();
%End

void glVertexAttrib4fv(GLuint indx, SIP_PYLIST values /DocType="list-of-float"/);
%MethodCode
    if (PyList_GET_SIZE(values) != 4)
    {
        gles2_error("the number of values must be 4");
        sipIsErr = 1;
    }
    else
    {
        GLfloat *array;

        if ((array = gles2_as_GLfloat_array(values)) == NULL)
        {
            sipIsErr = 1;
        }
        else
        {
            glVertexAttrib4fv(indx, array);
            sipIsErr = gles2_error_check();
            sipFree(array);
        }
    }
%End

void glVertexAttribPointer(GLuint indx, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const void *buffer);
%MethodCode
    glVertexAttribPointer(indx, size, type, normalized, stride, buffer);
    sipIsErr = gles2_error_check();
%End

void glViewport(GLint x, GLint y, GLsizei width, GLsizei height);
%MethodCode
    glViewport(x, y, width, height);
    sipIsErr = gles2_error_check();
%End


%ModuleCode
/*
 * A Python list of ASCII strings or bytes is converted to an array of GLchar*
 * on the heap.
 */
static const GLchar **gles2_as_GLstr_array(PyObject *GLstr_list, PyObject **owner_tuple)
{
    const GLchar **strings;
    SIP_SSIZE_T len;

    len = PyList_GET_SIZE(GLstr_list);

    if ((strings = sipMalloc(len * sizeof (GLchar *))) != NULL)
    {
        PyObject *owners;

        /*
         * A string may be owned by a temporary Python object so return a tuple
         * of them so we can manage the life cycle.
         */
        if ((owners = PyTuple_New(len)) == NULL)
        {
            sipFree(strings);
            strings = NULL;
        }
        else
        {
            SIP_SSIZE_T i;

            for (i = 0; i < len; ++i)
            {
                const char *val;
                PyObject *val_obj = PyList_GET_ITEM(GLstr_list, i);

                if ((val = sipString_AsASCIIString(&val_obj)) == NULL)
                {
                    sipFree(strings);
                    strings = NULL;
                    Py_DECREF(owners);
                    break;
                }

                strings[i] = val;
                PyTuple_SET_ITEM(owners, i, val_obj);
            }
        }

        *owner_tuple = owners;
    }

    return strings;
}


/*
 * A Python list of integers is converted to an array of GLint on the heap.
 */
static GLint *gles2_as_GLint_array(PyObject *GLint_list)
{
    GLint *ints;
    SIP_SSIZE_T len;

    len = PyList_GET_SIZE(GLint_list);

    if ((ints = sipMalloc(len * sizeof (GLint))) != NULL)
    {
        SIP_SSIZE_T i;

        PyErr_Clear();

        for (i = 0; i < len; ++i)
        {
            GLint val = SIPLong_AsLong(PyList_GET_ITEM(GLint_list, i));

            if (PyErr_Occurred())
            {
                sipFree(ints);
                ints = NULL;
                break;
            }

            ints[i] = val;
        }
    }

    return ints;
}


/*
 * A Python list of floats is converted to an array of GLfloat on the heap.
 */
static GLfloat *gles2_as_GLfloat_array(PyObject *GLfloat_list)
{
    GLfloat *floats;
    SIP_SSIZE_T len;

    len = PyList_GET_SIZE(GLfloat_list);

    if ((floats = sipMalloc(len * sizeof (GLfloat))) != NULL)
    {
        SIP_SSIZE_T i;

        PyErr_Clear();

        for (i = 0; i < len; ++i)
        {
            GLfloat val = PyFloat_AsDouble(PyList_GET_ITEM(GLfloat_list, i));

            if (PyErr_Occurred())
            {
                sipFree(floats);
                floats = NULL;
                break;
            }

            floats[i] = val;
        }
    }

    return floats;
}


/*
 * A Python list of integers is converted to an array of GLuint on the heap.
 */
static GLuint *gles2_as_GLuint_array(PyObject *GLuint_list)
{
    GLuint *uints;
    SIP_SSIZE_T len;

    len = PyList_GET_SIZE(GLuint_list);

    if ((uints = sipMalloc(len * sizeof (GLuint))) != NULL)
    {
        SIP_SSIZE_T i;

        PyErr_Clear();

        for (i = 0; i < len; ++i)
        {
            GLuint val = sipLong_AsUnsignedLong(PyList_GET_ITEM(GLuint_list, i));

            if (PyErr_Occurred())
            {
                sipFree(uints);
                uints = NULL;
                break;
            }

            uints[i] = val;
        }
    }

    return uints;
}


/*
 * An array of GLuint is converted to a Python list of integers.
 */
static PyObject *gles2_from_GLuint_array(GLsizei n, GLuint *GLuint_array)
{
    PyObject *list;

    if ((list = PyList_New(n)) != NULL)
    {
        GLsizei i;

        for (i = 0; i < n; ++i)
        {
            PyObject *val;

            if ((val = PyLong_FromUnsignedLong(GLuint_array[i])) == NULL)
            {
                Py_DECREF(list);
                list = NULL;
                break;
            }

            PyList_SET_ITEM(list, i, val);
        }
    }

    return list;
}
%End
