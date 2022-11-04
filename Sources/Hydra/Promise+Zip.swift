/*
* Hydra
* Fullfeatured lightweight Promise & Await Library for Swift
*
* Created by:	Daniele Margutti
* Email:		hello@danielemargutti.com
* Web:			http://www.danielemargutti.com
* Twitter:		@danielemargutti
*
* Copyright © 2017 Daniele Margutti
*
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*
*/


import Foundation


/// Join two promises and return a tuple with the results of both (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promise b
/// - Returns: joined promise of type Promise<(A,B)>
public func zip<A, B>(in context: Context? = nil, _ a: Promise<A>, _ b: Promise<B>) -> Promise<(A,B)> {
	return all(a.void,b.void).then(in: context, { _ in
		return Promise<(A, B)>(resolved: (a.state.value!, b.state.value!))
	})
}


/// Join three promises and return a tuple with the results of the three passed promises (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promise b
///   - c: promise c
/// - Returns: joined promise of type Promise<(A,B,C)>
public func zip<A,B,C>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>) -> Promise<(A,B,C)> {
	return all(a.void,b.void,c.void).then(in: context, { _ in
		return Promise<(A, B, C)>(resolved: (a.state.value!, b.state.value!, c.state.value!))
	})
}


/// Join four promises and return a tuple with the results of the four promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
/// - Returns: joined promise of type Promise<(A,B,C,D)>
public func zip<A,B,C,D>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>) -> Promise<(A,B,C,D)> {
	return all(a.void,b.void,c.void,d.void).then(in: context, { _ in
		return Promise<(A, B, C, D)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!))
	})
}

/// Join five promises and return a tuple with the results of the five promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
/// - Returns: joined promise of type Promise<(A,B,C,D,E)>
public func zip<A,B,C,D,E>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>) -> Promise<(A,B,C,D,E)> {
    return all(a.void,b.void,c.void,d.void,e.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!))
    })
}

/// Join six promises and return a tuple with the results of the six promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F)>
public func zip<A,B,C,D,E,F>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>) -> Promise<(A,B,C,D,E,F)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G)>
public func zip<A,B,C,D,E,F,G>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>) -> Promise<(A,B,C,D,E,F,G)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H)>
public func zip<A,B,C,D,E,F,G,H>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>) -> Promise<(A,B,C,D,E,F,G,H)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I)>
public func zip<A,B,C,D,E,F,G,H,I>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>) -> Promise<(A,B,C,D,E,F,G,I)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, I)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, i.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J)>
public func zip<A,B,C,D,E,F,G,H,I,J>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>) -> Promise<(A,B,C,D,E,F,G,H,I,J)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K)>
public func zip<A,B,C,D,E,F,G,H,I,J,K>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
///   - q: promise q
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>, q:Promise<Q>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void,q.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!,q.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
///   - q: promise q
///   - r: promise r
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>, q:Promise<Q>, r:Promise<R>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void,q.void,r.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!,q.state.value!,r.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
///   - q: promise q
///   - r: promise r
///   - s: promise s
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>, q:Promise<Q>, r:Promise<R>, s:Promise<S>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void,q.void,r.void,s.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!,q.state.value!,r.state.value!,s.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
///   - q: promise q
///   - r: promise r
///   - s: promise s
///   - t: promise t
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>, q:Promise<Q>, r:Promise<R>, s:Promise<S>, t:Promise<T>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void,q.void,r.void,s.void,t.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!,q.state.value!,r.state.value!,s.state.value!,t.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
///   - q: promise q
///   - r: promise r
///   - s: promise s
///   - t: promise t
///   - u: promise u
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>, q:Promise<Q>, r:Promise<R>, s:Promise<S>, t:Promise<T>, u:Promise<U>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void,q.void,r.void,s.void,t.void,u.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!,q.state.value!,r.state.value!,s.state.value!,t.state.value!,u.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
///   - q: promise q
///   - r: promise r
///   - s: promise s
///   - t: promise t
///   - u: promise u
///   - v: promise v
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>, q:Promise<Q>, r:Promise<R>, s:Promise<S>, t:Promise<T>, u:Promise<U>, v:Promise<V>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void,q.void,r.void,s.void,t.void,u.void,v.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!,q.state.value!,r.state.value!,s.state.value!,t.state.value!,u.state.value!,v.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
///   - q: promise q
///   - r: promise r
///   - s: promise s
///   - t: promise t
///   - u: promise u
///   - v: promise v
///   - w: promise w
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>, q:Promise<Q>, r:Promise<R>, s:Promise<S>, t:Promise<T>, u:Promise<U>, v:Promise<V>, w:Promise<W>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void,q.void,r.void,s.void,t.void,u.void,v.void,w.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!,q.state.value!,r.state.value!,s.state.value!,t.state.value!,u.state.value!,v.state.value!,w.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
///   - q: promise q
///   - r: promise r
///   - s: promise s
///   - t: promise t
///   - u: promise u
///   - v: promise v
///   - w: promise w
///   - x: promise x
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>, q:Promise<Q>, r:Promise<R>, s:Promise<S>, t:Promise<T>, u:Promise<U>, v:Promise<V>, w:Promise<W>, x:Promise<X>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void,q.void,r.void,s.void,t.void,u.void,v.void,w.void,x.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!,q.state.value!,r.state.value!,s.state.value!,t.state.value!,u.state.value!,v.state.value!,w.state.value!,x.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
///   - q: promise q
///   - r: promise r
///   - s: promise s
///   - t: promise t
///   - u: promise u
///   - v: promise v
///   - w: promise w
///   - x: promise x
///   - y: promise y
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>, q:Promise<Q>, r:Promise<R>, s:Promise<S>, t:Promise<T>, u:Promise<U>, v:Promise<V>, w:Promise<W>, x:Promise<X>, y:Promise<Y>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void,q.void,r.void,s.void,t.void,u.void,v.void,w.void,x.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!,q.state.value!,r.state.value!,s.state.value!,t.state.value!,u.state.value!,v.state.value!,w.state.value!,x.state.value!,y.state.value!))
    })
}

/// Join seven promises and return a tuple with the results of the seven promises passed (promises will be resolved in parallel in `background` QoS queue).
/// Rejects as soon one promise reject.
///
/// - Parameters:
///   - context: context queue to report the result (if not specified `background` queue is used instead)
///   - a: promise a
///   - b: promsie b
///   - c: promise c
///   - d: promise d
///   - e: promise e
///   - f: promise f
///   - g: promise g
///   - h: promise h
///   - i: promise i
///   - j: promise j
///   - k: promise k
///   - l: promise l
///   - m: promise m
///   - n: promise n
///   - o: promise o
///   - p: promise p
///   - q: promise q
///   - r: promise r
///   - s: promise s
///   - t: promise t
///   - u: promise u
///   - v: promise v
///   - w: promise w
///   - x: promise x
///   - y: promise y
///   - z: promise z
/// - Returns: joined promise of type Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z)>
public func zip<A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z>(in context: Context? = nil, a: Promise<A>, b: Promise<B>, c: Promise<C>, d: Promise<D>, e: Promise<E>, f: Promise<F>, g: Promise<G>, h: Promise<H>, i: Promise<I>, j:Promise<J>, k:Promise<K>, l:Promise<L>, m:Promise<M>, n:Promise<N>, o:Promise<O>, p:Promise<P>, q:Promise<Q>, r:Promise<R>, s:Promise<S>, t:Promise<T>, u:Promise<U>, v:Promise<V>, w:Promise<W>, x:Promise<X>, y:Promise<Y>, z:Promise<Z>) -> Promise<(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z)> {
    return all(a.void,b.void,c.void,d.void,e.void,f.void,g.void,h.void,i.void,j.void,k.void,l.void,m.void,n.void,o.void,p.void,q.void,r.void,s.void,t.void,u.void,v.void,w.void,x.void,z.void).then(in: context, { _ in
        return Promise<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z)>(resolved: (a.state.value!, b.state.value!, c.state.value!, d.state.value!, e.state.value!, f.state.value!, g.state.value!, h.state.value!, i.state.value!, j.state.value!,k.state.value!,l.state.value!,m.state.value!,n.state.value!,o.state.value!,p.state.value!,q.state.value!,r.state.value!,s.state.value!,t.state.value!,u.state.value!,v.state.value!,w.state.value!,x.state.value!,y.state.value!,z.state.value!))
    })
}
