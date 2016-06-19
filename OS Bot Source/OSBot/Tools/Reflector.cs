using System;
using System.Linq;
using System.Reflection;

namespace OSBot.Tools
{
    public sealed class Reflector : IDisposable
    {
        public static Reflector Global
        {
            get
            {
                return _Global == null ? _Global = new Reflector(AppDomain.CurrentDomain.GetAssemblies().Where(a => a.FullName.StartsWith("OSBot")).ToArray()) : _Global;
            }
        }
        private static Reflector _Global;
        public Assembly[] Assemblies { get; private set; }
        
        public Reflector(params Assembly[] Assemblies)
        {
            this.Assemblies = Assemblies;
        }
        
        public void Dispose()
        {
            Assemblies = null;
        }
        ~Reflector()
        {
            Dispose();
        }
        
        public Type[] GetTypes()
        {
            return (from type in Assemblies.SelectMany(a => a.GetTypes())
                    select type).ToArray();
        }
        
        public MethodInfo[] GetMethods()
        {
            return (from method in GetTypes().SelectMany(t => t.GetMethods())
                    select method).ToArray();
        }
        
        public MethodInfo[] GetMethodsByAttribute<pAttribute>() where pAttribute: Attribute
        {
            return (from method in GetMethods()
                    let attr = Attribute.GetCustomAttribute(method, typeof(pAttribute)) as pAttribute
                    where attr != null
                    select method).ToArray();
        }
        
        public Pair<pAttribute, MethodInfo>[] GetMethodsWithAttribute<pAttribute>() where pAttribute: Attribute
        {
            return (from method in GetMethods()
                    let attr = Attribute.GetCustomAttribute(method, typeof(pAttribute)) as pAttribute
                    where attr != null
                    select new Pair<pAttribute, MethodInfo>(attr, method)).ToArray();
        }


        public Type[] GetTypesByAttribute<pAttribute>() where pAttribute: Attribute
        {
            return (from type in GetTypes()
                    let attr = Attribute.GetCustomAttribute(type, typeof(pAttribute)) as pAttribute
                    where attr != null
                    select type).ToArray();
        }

        public Pair<pAttribute, Type>[] GetTypesWithAttribute<pAttribute>() where pAttribute: Attribute
        {
            return (from type in GetTypes()
                    let attr = Attribute.GetCustomAttribute(type, typeof(pAttribute)) as pAttribute
                    where attr != null
                    select new Pair<pAttribute, Type>(attr, type)).ToArray();
        }
    }
}
